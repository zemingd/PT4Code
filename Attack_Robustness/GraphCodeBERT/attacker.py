import sys
import os
import copy
import torch
import numpy as np
import random
from run import InputFeatures, extract_dataflow
from utils import select_parents, crossover, map_chromesome, mutate, is_valid_variable_name, _tokenize, get_identifier_posistions_from_code, get_masked_code_by_position, get_masked_code_by_positions

from utils import GraphCodeDataset, isUID
from run_parser import get_identifiers, get_example

def compute_fitness(chromesome, codebert_tgt, tokenizer_tgt, orig_prob, orig_label, true_label ,code, names_positions_dict, args):
    # words + chromesome + orig_label + current_prob
    temp_code = map_chromesome(chromesome, code, "java")
    new_feature = convert_code_to_features(temp_code, tokenizer_tgt, true_label, args)
    new_dataset = GraphCodeDataset([new_feature], args)
    new_logits, preds = codebert_tgt.get_results(new_dataset, args.eval_batch_size)
    fitness_value = orig_prob - new_logits[0][orig_label]
    return fitness_value, preds[0]

from parser import DFG_java,DFG_java,DFG_ruby,DFG_go,DFG_php,DFG_javascript
from parser import (remove_comments_and_docstrings,
                   tree_to_token_index,
                   index_to_code_token,
                   tree_to_variable_index)
from tree_sitter import Language, Parser
dfg_function={
    'java':DFG_java,
    'java':DFG_java,
    'ruby':DFG_ruby,
    'go':DFG_go,
    'php':DFG_php,
    'javascript':DFG_javascript
}

#load parsers
parsers={}        
for lang in dfg_function:
    LANGUAGE = Language('parser/my-languages.so', lang)
    parser = Parser()
    parser.set_language(LANGUAGE) 
    parser = [parser,dfg_function[lang]]    
    parsers[lang]= parser

def convert_code_to_features(code, tokenizer, label, args):
    parser = parsers["java"]
    code_tokens,dfg = extract_dataflow(code, parser, "java")
    code_tokens=[tokenizer.tokenize('@ '+x)[1:] if idx!=0 else tokenizer.tokenize(x) for idx,x in enumerate(code_tokens)]
    ori2cur_pos={}
    ori2cur_pos[-1]=(0,0)
    for i in range(len(code_tokens)):
        ori2cur_pos[i]=(ori2cur_pos[i-1][1],ori2cur_pos[i-1][1]+len(code_tokens[i]))    
    code_tokens=[y for x in code_tokens for y in x]

    code_tokens=code_tokens[:args.code_length+args.data_flow_length-2-min(len(dfg),args.data_flow_length)]
    source_tokens =[tokenizer.cls_token]+code_tokens+[tokenizer.sep_token]
    source_ids =  tokenizer.convert_tokens_to_ids(source_tokens)
    position_idx = [i+tokenizer.pad_token_id + 1 for i in range(len(source_tokens))]
    dfg = dfg[:args.code_length+args.data_flow_length-len(source_tokens)]
    source_tokens += [x[0] for x in dfg]
    position_idx+=[0 for x in dfg]
    source_ids+=[tokenizer.unk_token_id for x in dfg]
    padding_length=args.code_length+args.data_flow_length-len(source_ids)
    position_idx+=[tokenizer.pad_token_id]*padding_length
    source_ids+=[tokenizer.pad_token_id]*padding_length

    reverse_index={}
    for idx,x in enumerate(dfg):
        reverse_index[x[1]]=idx
    for idx,x in enumerate(dfg):
        dfg[idx]=x[:-1]+([reverse_index[i] for i in x[-1] if i in reverse_index],)    
    dfg_to_dfg=[x[-1] for x in dfg]
    dfg_to_code=[ori2cur_pos[x[1]] for x in dfg]
    length=len([tokenizer.cls_token])
    dfg_to_code=[(x[0]+length,x[1]+length) for x in dfg_to_code]
    
    return InputFeatures(source_tokens, source_ids, position_idx, dfg_to_code, dfg_to_dfg, label)


def get_importance_score(args, example, code, words_list: list, sub_words: list, variable_names: list, tgt_model, tokenizer, label_list, batch_size=16, max_length=512, model_type='classification'):
    '''Compute the importance score of each variable'''
    # label: example[1] tensor(1)
    positions = get_identifier_posistions_from_code(words_list, variable_names)
    if len(positions) == 0:
        return None, None, None

    new_example = []

    masked_token_list, replace_token_positions = get_masked_code_by_position(words_list, positions)


    for index, tokens in enumerate([words_list] + masked_token_list):
        new_code = ' '.join(tokens)
        new_feature = convert_code_to_features(new_code, tokenizer, example[3].item(), args)
        new_example.append(new_feature)
    new_dataset = GraphCodeDataset(new_example, args)
    logits, preds = tgt_model.get_results(new_dataset, args.eval_batch_size)
    orig_probs = logits[0]
    orig_label = preds[0]
    
    orig_prob = max(orig_probs)

    importance_score = []
    for prob in logits[1:]:
        importance_score.append(orig_prob - prob[orig_label])

    return importance_score, replace_token_positions, positions


def get_best(args, words_list: list, variable_names: list, tgt_model, tokenizer, orig_prob, orig_label):
    '''Compute the importance score of each variable'''
    positions = get_identifier_posistions_from_code(words_list, variable_names)
    if len(positions) == 0:
        return None, None

    new_example = []
    masked_token_list = get_masked_code_by_positions(words_list, positions)
    # replace_token_positions indicates which variable's tokens are replaced by unk.
    for index, tokens in enumerate(masked_token_list):
        new_code = ' '.join(tokens)
        new_feature = convert_code_to_features(new_code, tokenizer, orig_label, args)
        new_example.append(new_feature)
    new_dataset = GraphCodeDataset(new_example, args)
    logits, preds = tgt_model.get_results(new_dataset, args.eval_batch_size)
    importance_score = {}
    for prob, variable in zip(logits, variable_names):
        importance_score[variable] = orig_prob - prob[orig_label]
    sorted_list_of_names = sorted(importance_score.items(), key=lambda x: x[1], reverse=True)
    return sorted_list_of_names, positions


def run_one_iteraion_sort(code, tgt_word, all_substitues, tokenizer_tgt, model_tgt, orig_label, args, current_prob, rep0, rep1):
    replace_examples = []
    for substitute in all_substitues:
        temp_code = get_example(code, tgt_word, substitute, "java")

        new_feature = convert_code_to_features(temp_code, tokenizer_tgt, orig_label, args)
        replace_examples.append(new_feature)
    new_dataset = GraphCodeDataset(replace_examples, args)
    logits, preds = model_tgt.get_results(new_dataset, args.eval_batch_size)
    assert (len(logits) == len(all_substitues))

    gaps = []
    for index, temp_prob in enumerate(logits):
        temp_label = preds[index]
        if temp_label != orig_label:
            candidate = all_substitues[index]
            rep0[tgt_word] = candidate
            adv_code = get_example(code, tgt_word, candidate, "java")
            model_tgt.query = model_tgt.query - len(logits) + index + 1
            return 1, adv_code, temp_label, None, None, rep0, rep1
        else:
            gaps.append(current_prob - temp_prob[temp_label])
    top2_candidates = np.argsort(gaps)[::-1][:2]
    if gaps[top2_candidates[0]] > 0:
        current_prob0 = current_prob - gaps[top2_candidates[0]]
        final_code0 = get_example(code, tgt_word, all_substitues[top2_candidates[0]], "java")
        rep0[tgt_word] = all_substitues[top2_candidates[0]]
    else:
        current_prob0 = current_prob
        final_code0 = code
    try:
        if gaps[top2_candidates[1]] > 0:
            current_prob1 = current_prob - gaps[top2_candidates[1]]
            final_code1 = get_example(code, tgt_word, all_substitues[top2_candidates[1]], "java")
            rep1[tgt_word] = all_substitues[top2_candidates[1]]
        else:
            current_prob1 = current_prob
            final_code1 = code
    except:
        current_prob1 = current_prob0
        final_code1 = copy.deepcopy(final_code0)
        if tgt_word in rep0.keys():
            rep1[tgt_word] = rep0[tgt_word]
    return -1, final_code0, current_prob0, final_code1, current_prob1, rep0, rep1


class Attacker():
    def __init__(self, args, model_tgt, tokenizer_tgt, model_mlm, tokenizer_mlm, use_bpe, threshold_pred_score) -> None:
        self.args = args
        self.model_tgt = model_tgt
        self.tokenizer_tgt = tokenizer_tgt
        self.model_mlm = model_mlm
        self.tokenizer_mlm = tokenizer_mlm
        self.use_bpe = use_bpe
        self.threshold_pred_score = threshold_pred_score


    def ga_attack(self, example, code, subs, initial_replace=None):
        '''
        return
            original program: code
            program length: prog_length
            adversar program: adv_program
            true label: true_label
            original prediction: orig_label
            adversarial prediction: temp_label
            is_attack_success: is_success
            extracted variables: variable_names
            importance score of variables: names_to_importance_score
            number of changed variables: nb_changed_var
            number of changed positions: nb_changed_pos
            substitues for variables: replaced_words
        '''

        logits, preds = self.model_tgt.get_results([example], self.args.eval_batch_size)
        orig_prob = logits[0]
        orig_label = preds[0]
        current_prob = max(orig_prob)

        true_label = example[3].item()
        adv_code = ''
        temp_label = None



        identifiers, code_tokens = get_identifiers(code, 'java')
        prog_length = len(code_tokens)


        processed_code = " ".join(code_tokens)
        
        words, sub_words, keys = _tokenize(processed_code, self.tokenizer_mlm)
  


        variable_names = list(subs.keys())

        if not orig_label == true_label:
            is_success = -4
            return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, None, None, None, None
            
        if len(variable_names) == 0:
            is_success = -3
            return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, None, None, None, None

        names_positions_dict = get_identifier_posistions_from_code(words, variable_names)
        
        nb_changed_var = 0 
        nb_changed_pos = 0
        is_success = -1

        variable_substitue_dict = {}

        for tgt_word in names_positions_dict.keys():
            variable_substitue_dict[tgt_word] = subs[tgt_word]


        fitness_values = []
        base_chromesome = {word: word for word in variable_substitue_dict.keys()}
        population = [base_chromesome]
        for tgt_word in variable_substitue_dict.keys():
            if initial_replace is None:
                replace_examples = []
                substitute_list = []
                
                current_prob = max(orig_prob)
                most_gap = 0.0
                initial_candidate = tgt_word
                tgt_positions = names_positions_dict[tgt_word]
                
                for a_substitue in variable_substitue_dict[tgt_word]:
                    # a_substitue = a_substitue.strip()
                    substitute_list.append(a_substitue)
                    temp_code = get_example(code, tgt_word, a_substitue, "java")

                    new_feature = convert_code_to_features(temp_code, self.tokenizer_tgt, example[3].item(), self.args)
                    replace_examples.append(new_feature)

                if len(replace_examples) == 0:
                    continue
                new_dataset = GraphCodeDataset(replace_examples, self.args)
                logits, preds = self.model_tgt.get_results(new_dataset, self.args.eval_batch_size)

                _the_best_candidate = -1
                for index, temp_prob in enumerate(logits):
                    temp_label = preds[index]
                    gap = current_prob - temp_prob[temp_label]
                    if gap > most_gap:
                        most_gap = gap
                        _the_best_candidate = index
                if _the_best_candidate == -1:
                    initial_candidate = tgt_word
                else:
                    initial_candidate = substitute_list[_the_best_candidate]
            else:
                initial_candidate = initial_replace[tgt_word]

            temp_chromesome = copy.deepcopy(base_chromesome)
            temp_chromesome[tgt_word] = initial_candidate
            population.append(temp_chromesome)
            temp_fitness, temp_label = compute_fitness(temp_chromesome, self.model_tgt, self.tokenizer_tgt, max(orig_prob), orig_label, true_label ,code, names_positions_dict, self.args)
            fitness_values.append(temp_fitness)

        cross_probability = 0.7

        max_iter = max(5 * len(population), 10)
        for i in range(max_iter):
            _temp_mutants = []
            for j in range(self.args.eval_batch_size):
                p = random.random()
                chromesome_1, index_1, chromesome_2, index_2 = select_parents(population)
                if p < cross_probability: 
                    if chromesome_1 == chromesome_2:
                        child_1 = mutate(chromesome_1, variable_substitue_dict)
                        continue
                    child_1, child_2 = crossover(chromesome_1, chromesome_2)
                    if child_1 == chromesome_1 or child_1 == chromesome_2:
                        child_1 = mutate(chromesome_1, variable_substitue_dict)
                else: 
                    child_1 = mutate(chromesome_1, variable_substitue_dict)
                _temp_mutants.append(child_1)
            
            # compute fitness in batch
            feature_list = []
            for mutant in _temp_mutants:
                _temp_code = map_chromesome(mutant, code, "java")
                _tmp_feature = convert_code_to_features(_temp_code, self.tokenizer_tgt, true_label, self.args)
                feature_list.append(_tmp_feature)
            new_dataset = GraphCodeDataset(feature_list, self.args)
            mutate_logits, mutate_preds = self.model_tgt.get_results(new_dataset, self.args.eval_batch_size)
            mutate_fitness_values = []
            for index, logits in enumerate(mutate_logits):
                if mutate_preds[index] != orig_label:
                    adv_code = map_chromesome(_temp_mutants[index], code, "java")
                    for old_word in _temp_mutants[index].keys():
                        if old_word == _temp_mutants[index][old_word]:
                            nb_changed_var += 1
                            nb_changed_pos += len(names_positions_dict[old_word])

                    return code, prog_length, adv_code, true_label, orig_label, mutate_preds[index], 1, variable_names, None, nb_changed_var, nb_changed_pos, _temp_mutants[index]
                _tmp_fitness = max(orig_prob) - logits[orig_label]
                mutate_fitness_values.append(_tmp_fitness)

            for index, fitness_value in enumerate(mutate_fitness_values):
                min_value = min(fitness_values)
                if fitness_value > min_value:

                    min_index = fitness_values.index(min_value)
                    population[min_index] = _temp_mutants[index]
                    fitness_values[min_index] = fitness_value

        return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, None, nb_changed_var, nb_changed_pos, None
        



    def greedy_attack(self, example, code, subs):
        '''
        return
            original program: code
            program length: prog_length
            adversar program: adv_program
            true label: true_label
            original prediction: orig_label
            adversarial prediction: temp_label
            is_attack_success: is_success
            extracted variables: variable_names
            importance score of variables: names_to_importance_score
            number of changed variables: nb_changed_var
            number of changed positions: nb_changed_pos
            substitues for variables: replaced_words
        '''

        logits, preds = self.model_tgt.get_results([example], self.args.eval_batch_size)
        orig_prob = logits[0]
        orig_label = preds[0]
        current_prob = max(orig_prob)

        true_label = example[3].item()
        adv_code = ''
        temp_label = None



        identifiers, code_tokens = get_identifiers(code, 'java')
        prog_length = len(code_tokens)


        processed_code = " ".join(code_tokens)
        
        words, sub_words, keys = _tokenize(processed_code, self.tokenizer_mlm)



        variable_names = list(subs.keys())

        if not orig_label == true_label:
            is_success = -4
            return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, None, None, None, None
            
        if len(variable_names) == 0:
            is_success = -3
            return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, None, None, None, None

        sub_words = [self.tokenizer_tgt.cls_token] + sub_words[:self.args.code_length - 2] + [self.tokenizer_tgt.sep_token]

        importance_score, replace_token_positions, names_positions_dict = get_importance_score(self.args, example, 
                                                processed_code,
                                                words,
                                                sub_words,
                                                variable_names,
                                                self.model_tgt, 
                                                self.tokenizer_tgt, 
                                                [0,1], 
                                                batch_size=self.args.eval_batch_size, 
                                                max_length=self.args.code_length, 
                                                model_type='classification')

        if importance_score is None:
            return code, prog_length, adv_code, true_label, orig_label, temp_label, -3, variable_names, None, None, None, None


        token_pos_to_score_pos = {}

        for i, token_pos in enumerate(replace_token_positions):
            token_pos_to_score_pos[token_pos] = i
        names_to_importance_score = {}

        for name in names_positions_dict.keys():
            total_score = 0.0
            positions = names_positions_dict[name]
            for token_pos in positions:
                total_score += importance_score[token_pos_to_score_pos[token_pos]]
            
            names_to_importance_score[name] = total_score

        sorted_list_of_names = sorted(names_to_importance_score.items(), key=lambda x: x[1], reverse=True)



        final_code = copy.deepcopy(code)
        nb_changed_var = 0 
        nb_changed_pos = 0
        is_success = -1
        replaced_words = {}
        
        for name_and_score in sorted_list_of_names:
            tgt_word = name_and_score[0]
            tgt_positions = names_positions_dict[tgt_word] 
            
            all_substitues = subs[tgt_word]

            most_gap = 0.0
            candidate = None
            replace_examples = []

            substitute_list = []

            for substitute in all_substitues:
                
                substitute_list.append(substitute)
                temp_code = get_example(final_code, tgt_word, substitute, "java")
                new_feature = convert_code_to_features(temp_code, self.tokenizer_tgt, example[3].item(), self.args)
                replace_examples.append(new_feature)
            if len(replace_examples) == 0:
                continue
            new_dataset = GraphCodeDataset(replace_examples, self.args)
            logits, preds = self.model_tgt.get_results(new_dataset, self.args.eval_batch_size)
            assert(len(logits) == len(substitute_list))

            for index, temp_prob in enumerate(logits):
                temp_label = preds[index]
                if temp_label != orig_label:
                    is_success = 1
                    nb_changed_var += 1
                    nb_changed_pos += len(names_positions_dict[tgt_word])
                    candidate = substitute_list[index]
                    replaced_words[tgt_word] = candidate
                    adv_code = get_example(final_code, tgt_word, candidate, "java")
                    # print("%s SUC! %s => %s (%.5f => %.5f)" % \
                    #     ('>>', tgt_word, candidate,
                    #     current_prob,
                    #     temp_prob[orig_label]), flush=True)
                    return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, names_to_importance_score, nb_changed_var, nb_changed_pos, replaced_words
                else:
                    gap = current_prob - temp_prob[temp_label]
                    if gap > most_gap:
                        most_gap = gap
                        candidate = substitute_list[index]
        
            if most_gap > 0:

                nb_changed_var += 1
                nb_changed_pos += len(names_positions_dict[tgt_word])
                current_prob = current_prob - most_gap
                final_code = get_example(final_code, tgt_word, candidate, "java")
                replaced_words[tgt_word] = candidate
                # print("%s ACC! %s => %s (%.5f => %.5f)" % \
                #     ('>>', tgt_word, candidate,
                #     current_prob + most_gap,
                #     current_prob), flush=True)
            else:
                replaced_words[tgt_word] = tgt_word
            
            adv_code = final_code

        return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, names_to_importance_score, nb_changed_var, nb_changed_pos, replaced_words

    def pwvs_attack(self, example, code, subs, current_prob, orig_label):
        '''
        return
            original program: code
            program length: prog_length
            adversar program: adv_program
            true label: true_label
            original prediction: orig_label
            adversarial prediction: temp_label
            is_attack_success: is_success
            extracted variables: variable_names
            importance score of variables: names_to_importance_score
            number of changed variables: nb_changed_var
            number of changed positions: nb_changed_pos
            substitues for variables: replaced_words
        '''


        true_label = example[3].item()
        adv_code = ''
        temp_label = None

        identifiers, code_tokens = get_identifiers(code, 'java')
        prog_length = len(code_tokens)

        processed_code = " ".join(code_tokens)

        words, sub_words, keys = _tokenize(processed_code, self.tokenizer_mlm)
   
        variable_names = list(subs.keys())

        if len(variable_names) == 0:

            is_success = -3
            return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, None, None, None, None

        sub_words = [self.tokenizer_tgt.cls_token] + sub_words[:self.args.code_length - 2] + [self.tokenizer_tgt.sep_token]



        importance_score, replace_token_positions, names_positions_dict = get_importance_score(self.args, example,
                                                                                               processed_code,
                                                                                               words,
                                                                                               sub_words,
                                                                                               variable_names,
                                                                                               self.model_tgt,
                                                                                               self.tokenizer_tgt,
                                                                                               [0, 1],
                                                                                               batch_size=self.args.eval_batch_size,
                                                                                               max_length=self.args.code_length,
                                                                                               model_type='classification')

        if importance_score is None:
            return code, prog_length, adv_code, true_label, orig_label, temp_label, -3, variable_names, None, None, None, None

        token_pos_to_score_pos = {}

        for i, token_pos in enumerate(replace_token_positions):
            token_pos_to_score_pos[token_pos] = i
        # 重新计算Importance score，将所有出现的位置加起来（而不是取平均）.
        names_to_importance_score = {}

        for name in names_positions_dict.keys():
            total_score = 0.0
            positions = names_positions_dict[name]
            for token_pos in positions:
                # 这个token在code中对应的位置
                # importance_score中的位置：token_pos_to_score_pos[token_pos]
                total_score += importance_score[token_pos_to_score_pos[token_pos]]

            names_to_importance_score[name] = total_score

        final_code = copy.deepcopy(code)
        nb_changed_var = 0  # 表示被修改的variable数量
        nb_changed_pos = 0
        is_success = -1
        candidates = {}
        candidates_delta = {}
        replaced_words = {}
        saliency_dict = {}
        softmax_sum = 0

        variable_names_ = []
        for tgt_word in variable_names:
            all_substitues = subs[tgt_word]

            most_gap = -1
            replace_examples = []

            substitute_list = []
            # 依次记录了被加进来的substitue
            # 即，每个temp_replace对应的substitue.
            for substitute in all_substitues:
                substitute_list.append(substitute)
                # 记录了替换的顺序

                # 需要将几个位置都替换成sustitue_
                temp_code = get_example(final_code, tgt_word, substitute, "java")

                new_feature = convert_code_to_features(temp_code, self.tokenizer_tgt, example[3].item(), self.args)
                replace_examples.append(new_feature)
            if len(replace_examples) == 0:
                # 并没有生成新的mutants，直接跳去下一个token
                continue
            new_dataset = GraphCodeDataset(replace_examples, self.args)
            # 3. 将他们转化成features
            logits, preds = self.model_tgt.get_results(new_dataset, self.args.eval_batch_size)
            assert (len(logits) == len(substitute_list))

            prob_changes = []
            for index, temp_prob in enumerate(logits):
                temp_label = preds[index]
                if temp_label != orig_label:
                    # 如果label改变了，说明这个mutant攻击成功
                    is_success = 1
                    nb_changed_var += 1
                    nb_changed_pos += len(names_positions_dict[tgt_word])
                    candidate = substitute_list[index]
                    replaced_words[tgt_word] = candidate
                    adv_code = get_example(final_code, tgt_word, candidate, "java")
                    # print("%s SUC! %s => %s (%.5f => %.5f)" % \
                    #       ('>>', tgt_word, candidate,
                    #        current_prob,
                    #        temp_prob[orig_label]), flush=True)
                    return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, names_to_importance_score, nb_changed_var, nb_changed_pos, replaced_words
                else:
                    # 如果没有攻击成功，我们看probability的修改
                    gap = current_prob - temp_prob[temp_label]
                    prob_changes.append(gap)
                    # 并选择那个最大的gap.
                    if gap > most_gap:
                        most_gap = gap
                        candidates[tgt_word] = substitute_list[index]
                        candidates_delta[tgt_word] = most_gap
            variable_names_.append(tgt_word)
            softmax_sum += np.exp(names_to_importance_score[tgt_word])

        for tgt_word in variable_names_:
            saliency_dict[tgt_word] = np.exp(names_to_importance_score[tgt_word]) / softmax_sum * candidates_delta[tgt_word]
        sorted_list_of_names = sorted(saliency_dict.items(), key=lambda x: x[1], reverse=True)
        for name_id, name_and_score in enumerate(sorted_list_of_names):
            tgt_word = name_and_score[0]
            nb_changed_var += 1
            nb_changed_pos += len(names_positions_dict[tgt_word])
            replaced_words[tgt_word] = candidates[tgt_word]
            final_code = get_example(final_code, tgt_word, candidates[tgt_word], "java")
            if name_id != 0:
                new_feature = convert_code_to_features(final_code, self.tokenizer_tgt, example[3].item(), self.args)
                new_dataset = GraphCodeDataset([new_feature], self.args)
                logit, pred = self.model_tgt.get_results(new_dataset, self.args.eval_batch_size)
                if pred[0] != orig_label:
                    is_success = 1
                    return code, prog_length, final_code, true_label, orig_label, pred[0], is_success, variable_names, names_to_importance_score, nb_changed_var, nb_changed_pos, replaced_words
        adv_code = final_code

        return code, prog_length, adv_code, true_label, orig_label, temp_label, is_success, variable_names, names_to_importance_score, nb_changed_var, nb_changed_pos, replaced_words

    def our_attack(self, code, substituions, current_prob, orig_label):
        '''
        return
            original program: code
            program length: prog_length
            adversar program: adv_program
            true label: true_label
            original prediction: orig_label
            adversarial prediction: temp_label
            is_attack_success: is_success
            extracted variables: variable_names
            importance score of variables: names_to_importance_score
            number of changed variables: nb_changed_var
            number of changed positions: nb_changed_pos
            substitues for variables: replaced_words
        '''
        # 先得到tgt_model针对原始Example的预测信息.

        adv_code = ''
        temp_label = None

        identifiers, code_tokens = get_identifiers(code, 'java')
        prog_length = len(code_tokens)

        processed_code = " ".join(code_tokens)

        words, sub_words, keys = _tokenize(processed_code, self.tokenizer_mlm)
        # 这里经过了小写处理..

        variable_names_ori = list(substituions.keys())

        if len(variable_names_ori) == 0:
            # 没有提取到identifier，直接退出
            is_success = -3
            return code, prog_length, adv_code, orig_label, orig_label, temp_label, is_success, variable_names_ori, None, None, None, None

        variable_names = []
        for variable_name in variable_names_ori:
            if len(substituions[variable_name]) >= 2:
                variable_names.append(variable_name)

        names_to_importance_score, names_positions_dict = get_best(self.args, words, variable_names, self.model_tgt, self.tokenizer_tgt, current_prob, orig_label)
        if names_to_importance_score is None:
            return code, prog_length, adv_code, orig_label, orig_label, temp_label, -3, variable_names, None, None, None, None

        final_code = copy.deepcopy(code)
        nb_changed_var = 0  # 表示被修改的variable数量
        nb_changed_pos = 0
        is_success = -1
        replaced_words0 = {}
        replaced_words1 = {}

        for variable_id in range(len(variable_names)):
            tgt_word = names_to_importance_score.pop(0)[0]
            nb_changed_var += 1  # 表示被修改的variable数量
            nb_changed_pos += len(names_positions_dict[tgt_word])
            all_substitues_tgt_word = substituions[tgt_word]
            if variable_id == 0:
                is_success, code0, prob0, code1, prob1, replaced_words0, replaced_words1 = run_one_iteraion_sort(final_code, tgt_word, all_substitues_tgt_word, self.tokenizer_tgt, self.model_tgt, orig_label, self.args, current_prob, replaced_words0, replaced_words1)
                if is_success == 1:
                    return code, prog_length, code0, orig_label, orig_label, prob0, is_success, variable_names, names_to_importance_score, nb_changed_var, nb_changed_pos, replaced_words0
            else:
                is_success, code00, prob00, code01, prob01, replaced_words0, replaced_words1 = run_one_iteraion_sort(code0, tgt_word, all_substitues_tgt_word, self.tokenizer_tgt, self.model_tgt, orig_label, self.args, prob0, replaced_words0, replaced_words1)
                if is_success == 1:
                    return code, prog_length, code00, orig_label, orig_label, prob00, is_success, variable_names, names_to_importance_score, nb_changed_var, nb_changed_pos, replaced_words0
                is_success, code10, prob10, code11, prob11, replaced_words0, replaced_words1 = run_one_iteraion_sort(code1, tgt_word, all_substitues_tgt_word, self.tokenizer_tgt, self.model_tgt, orig_label, self.args, prob1, replaced_words0, replaced_words1)
                if is_success == 1:
                    return code, prog_length, code10, orig_label, orig_label, prob10, is_success, variable_names, names_to_importance_score, nb_changed_var, nb_changed_pos, replaced_words0

                candidate_codes = [code00, code01, code10, code11]
                candidate_probs = [prob00, prob01, prob10, prob11]
                diffs = np.argsort(current_prob - candidate_probs)[::-1][:2]
                code0 = candidate_codes[diffs[0]]
                prob0 = candidate_probs[diffs[0]]
                code1 = candidate_codes[diffs[1]]
                prob1 = candidate_probs[diffs[1]]

            adv_code = code0

        return code, prog_length, adv_code, orig_label, orig_label, temp_label, is_success, variable_names, names_to_importance_score, nb_changed_var, nb_changed_pos, replaced_words0


class MHM_Attacker():
    def __init__(self, args, model_tgt, model_mlm, tokenizer_mlm, _token2idx, _idx2token) -> None:
        self.classifier = model_tgt
        self.model_mlm = model_mlm
        self.token2idx = _token2idx
        self.idx2token = _idx2token
        self.args = args
        self.tokenizer_mlm = tokenizer_mlm
    
    def mcmc(self, tokenizer, code=None, _label=None, _n_candi=30,
             _max_iter=100, _prob_threshold=0.95, subs = {}):
        identifiers, code_tokens = get_identifiers(code, 'java')
        processed_code = " ".join(code_tokens)
        prog_length = len(code_tokens)
        words, sub_words, keys = _tokenize(processed_code, tokenizer)
        raw_tokens = copy.deepcopy(words)
        variable_names = list(subs.keys())
       
        uid = get_identifier_posistions_from_code(words, variable_names)

        if len(uid) <= 0: # 是有可能存在找不到变量名的情况的.
            return {'succ': None, 'tokens': None, 'raw_tokens': None}

        variable_substitue_dict = {}
       
        for tgt_word in uid.keys():
            variable_substitue_dict[tgt_word] = subs[tgt_word]
        
        old_uids = {}
        old_uid = ""
        for iteration in range(1, 1+_max_iter):
            # 这个函数需要tokens
            res = self.__replaceUID(_tokens=code, _label=_label, _uid=uid,
                                    substitute_dict=variable_substitue_dict,
                                    _n_candi=_n_candi,
                                    _prob_threshold=_prob_threshold)
            # self.__printRes(_iter=iteration, _res=res, _prefix="  >> ")
            if res['status'].lower() in ['s', 'a']:
                if iteration == 1:
                    old_uids[res["old_uid"]] = []
                    old_uids[res["old_uid"]].append(res["new_uid"])
                    old_uid = res["old_uid"]
                flag = 0
                for k in old_uids.keys():
                    if res["old_uid"] == old_uids[k][-1]:
                        flag = 1
                        old_uids[k].append(res["new_uid"])
                        old_uid = k
                        break
                if flag == 0:
                    old_uids[res["old_uid"]] = []
                    old_uids[res["old_uid"]].append(res["new_uid"])
                    old_uid = res["old_uid"]

                code = res['tokens']
                uid[res['new_uid']] = uid.pop(res['old_uid']) # 替换key，但保留value.
                variable_substitue_dict[res['new_uid']] = variable_substitue_dict.pop(res['old_uid'])
                for i in range(len(raw_tokens)):
                    if raw_tokens[i] == res['old_uid']:
                        raw_tokens[i] = res['new_uid']
                if res['status'].lower() == 's':
                    replace_info = {}
                    nb_changed_pos = 0
                    for uid_ in old_uids.keys():
                        replace_info[uid_] = old_uids[uid_][-1]
                        nb_changed_pos += len(uid[old_uids[uid_][-1]])
                    return {'succ': True, 'tokens': code,
                            'raw_tokens': raw_tokens, "prog_length": prog_length, "new_pred": res["new_pred"], "is_success": 1, "old_uid": old_uid, "score_info": res["old_prob"][0]-res["new_prob"][0], "nb_changed_var": len(old_uids), "nb_changed_pos":nb_changed_pos, "replace_info": replace_info, "attack_type": "MHM"}
        replace_info = {}
        nb_changed_pos = 0
        for uid_ in old_uids.keys():
            replace_info[uid_] = old_uids[uid_][-1]
            nb_changed_pos += len(uid[old_uids[uid_][-1]])
        return {'succ': False, 'tokens': res['tokens'], 'raw_tokens': None, "prog_length": prog_length, "new_pred": res["new_pred"], "is_success": -1, "old_uid": old_uid, "score_info": res["old_prob"][0]-res["new_prob"][0], "nb_changed_var": len(old_uids), "nb_changed_pos":nb_changed_pos, "replace_info": replace_info, "attack_type": "MHM"}
    
    
    def mcmc_random(self, tokenizer, code=None, _label=None, _n_candi=30,
             _max_iter=100, _prob_threshold=0.95, subs = {}):
        identifiers, code_tokens = get_identifiers(code, 'java')
        prog_length = len(code_tokens)
        processed_code = " ".join(code_tokens)

        words, sub_words, keys = _tokenize(processed_code, tokenizer)
        raw_tokens = copy.deepcopy(words)
        variable_names = list(subs.keys())
        
        uid = get_identifier_posistions_from_code(words, variable_names)

        if len(uid) <= 0: # 是有可能存在找不到变量名的情况的.
            return {'succ': None, 'tokens': None, 'raw_tokens': None}

        # 还需要得到substitues
        variable_substitue_dict = {}
        for tgt_word in uid.keys():
            variable_substitue_dict[tgt_word] = subs[tgt_word]
            
        old_uids = {}
        old_uid = ""
        for iteration in range(1, 1+_max_iter):
            # 这个函数需要tokens
            res = self.__replaceUID_random(_tokens=code, _label=_label, _uid=uid,
                                    substitute_dict=variable_substitue_dict,
                                    _n_candi=_n_candi,
                                    _prob_threshold=_prob_threshold)
            # self.__printRes(_iter=iteration, _res=res, _prefix="  >> ")
            if res['status'].lower() in ['s', 'a']:
                if iteration == 1:
                    old_uids[res["old_uid"]] = []
                    old_uids[res["old_uid"]].append(res["new_uid"])
                    old_uid = res["old_uid"]
                flag = 0
                for k in old_uids.keys():
                    if res["old_uid"] == old_uids[k][-1]:
                        flag = 1
                        old_uids[k].append(res["new_uid"])
                        old_uid = k
                        break
                if flag == 0:
                    old_uids[res["old_uid"]] = []
                    old_uids[res["old_uid"]].append(res["new_uid"])
                    old_uid = res["old_uid"]
                code = res['tokens']
                uid[res['new_uid']] = uid.pop(res['old_uid']) # 替换key，但保留value.
                variable_substitue_dict[res['new_uid']] = variable_substitue_dict.pop(res['old_uid'])
                for i in range(len(raw_tokens)):
                    if raw_tokens[i] == res['old_uid']:
                        raw_tokens[i] = res['new_uid']
                if res['status'].lower() == 's':
                    replace_info = {}
                    nb_changed_pos = 0
                    for uid_ in old_uids.keys():
                        replace_info[uid_] = old_uids[uid_][-1]
                        nb_changed_pos += len(uid[old_uids[uid_][-1]])
                    return {'succ': True, 'tokens': code,
                            'raw_tokens': raw_tokens, "prog_length": prog_length, "new_pred": res["new_pred"], "is_success": 1, "old_uid": old_uid, "score_info": res["old_prob"][0]-res["new_prob"][0], "nb_changed_var": len(old_uids), "nb_changed_pos": nb_changed_pos, "replace_info": replace_info, "attack_type": "Ori_MHM"}
        replace_info = {}
        nb_changed_pos = 0
        for uid_ in old_uids.keys():
            replace_info[uid_] = old_uids[uid_][-1]
            nb_changed_pos += len(uid[old_uids[uid_][-1]])
        return {'succ': False, 'tokens': res['tokens'], 'raw_tokens': None, "prog_length": prog_length, "new_pred": res["new_pred"], "is_success": -1, "old_uid": old_uid, "score_info": res["old_prob"][0]-res["new_prob"][0], "nb_changed_var": len(old_uids), "nb_changed_pos": nb_changed_pos, "replace_info": replace_info, "attack_type": "Ori_MHM"}
    
    def __replaceUID(self, _tokens, _label=None, _uid={}, substitute_dict={},
                     _n_candi=30, _prob_threshold=0.95, _candi_mode="random"):
        
        assert _candi_mode.lower() in ["random", "nearby"]
        
        selected_uid = random.sample(substitute_dict.keys(), 1)[0] # 选择需要被替换的变量名
        if _candi_mode == "random":
            # First, generate candidate set.
            # The transition probabilities of all candidate are the same.
            candi_token = [selected_uid]
            candi_tokens = [copy.deepcopy(_tokens)]
            candi_labels = [_label]
            for c in random.sample(substitute_dict[selected_uid], min(_n_candi, len(substitute_dict[selected_uid]))): # 选出_n_candi数量的候选.
                if c in _uid.keys():
                    continue
                if isUID(c): # 判断是否是变量名.
                    candi_token.append(c)
                    candi_tokens.append(copy.deepcopy(_tokens))
                    candi_labels.append(_label)
                    candi_tokens[-1] = get_example(candi_tokens[-1], selected_uid, c, "java")

            new_example = []
            for tmp_tokens in candi_tokens:
                tmp_code = tmp_tokens
                new_feature = convert_code_to_features(tmp_code, self.tokenizer_mlm, _label, self.args)
                new_example.append(new_feature)
            new_dataset = GraphCodeDataset(new_example, self.args)
            prob, pred = self.classifier.get_results(new_dataset, self.args.eval_batch_size)

            for i in range(len(candi_token)):   # Find a valid example
                if pred[i] != _label: # 如果有样本攻击成功
                    return {"status": "s", "alpha": 1, "tokens": candi_tokens[i],
                            "old_uid": selected_uid, "new_uid": candi_token[i],
                            "old_prob": prob[0], "new_prob": prob[i],
                            "old_pred": pred[0], "new_pred": pred[i], "nb_changed_pos": _tokens.count(selected_uid)}

            candi_idx = 0
            min_prob = 1.0

            for idx, a_prob in enumerate(prob[1:]):
                if a_prob[_label] < min_prob:
                    candi_idx = idx + 1
                    min_prob = a_prob[_label]

          
            # At last, compute acceptance rate.
            alpha = (1-prob[candi_idx][_label]+1e-10) / (1-prob[0][_label]+1e-10)
            if random.uniform(0, 1) > alpha or alpha < _prob_threshold:
                return {"status": "r", "alpha": alpha, "tokens": candi_tokens[i],
                        "old_uid": selected_uid, "new_uid": candi_token[i],
                        "old_prob": prob[0], "new_prob": prob[i],
                        "old_pred": pred[0], "new_pred": pred[i], "nb_changed_pos": _tokens.count(selected_uid)}
            else:
                return {"status": "a", "alpha": alpha, "tokens": candi_tokens[i],
                        "old_uid": selected_uid, "new_uid": candi_token[i],
                        "old_prob": prob[0], "new_prob": prob[i],
                        "old_pred": pred[0], "new_pred": pred[i], "nb_changed_pos": _tokens.count(selected_uid)}
        else:
            pass
    
    def __replaceUID_random(self, _tokens, _label=None, _uid={}, substitute_dict={},
                     _n_candi=30, _prob_threshold=0.95, _candi_mode="random"):
        
        assert _candi_mode.lower() in ["random", "nearby"]
        
        selected_uid = random.sample(substitute_dict.keys(), 1)[0] 
        if _candi_mode == "random":
            # First, generate candidate set.
            # The transition probabilities of all candidate are the same.
            candi_token = [selected_uid]
            candi_tokens = [copy.deepcopy(_tokens)]
            candi_labels = [_label]
            for c in random.sample(self.idx2token, _n_candi): 
                if c in _uid.keys():
                    continue
                if isUID(c): 
                    candi_token.append(c)
                    candi_tokens.append(copy.deepcopy(_tokens))
                    candi_labels.append(_label)
                    candi_tokens[-1] = get_example(candi_tokens[-1], selected_uid, c, "java")

            new_example = []
            for tmp_tokens in candi_tokens:
                tmp_code = tmp_tokens
                new_feature = convert_code_to_features(tmp_code, self.tokenizer_mlm, _label, self.args)
                new_example.append(new_feature)
            new_dataset = GraphCodeDataset(new_example, self.args)
            prob, pred = self.classifier.get_results(new_dataset, self.args.eval_batch_size)

            for i in range(len(candi_token)):   # Find a valid example
                if pred[i] != _label:
                    return {"status": "s", "alpha": 1, "tokens": candi_tokens[i],
                            "old_uid": selected_uid, "new_uid": candi_token[i],
                            "old_prob": prob[0], "new_prob": prob[i],
                            "old_pred": pred[0], "new_pred": pred[i], "nb_changed_pos": _tokens.count(selected_uid)}

            candi_idx = 0
            min_prob = 1.0

            for idx, a_prob in enumerate(prob[1:]):
                if a_prob[_label] < min_prob:
                    candi_idx = idx + 1
                    min_prob = a_prob[_label]


            # At last, compute acceptance rate.
            alpha = (1-prob[candi_idx][_label]+1e-10) / (1-prob[0][_label]+1e-10)

            if random.uniform(0, 1) > alpha or alpha < _prob_threshold:
                return {"status": "r", "alpha": alpha, "tokens": candi_tokens[i],
                        "old_uid": selected_uid, "new_uid": candi_token[i],
                        "old_prob": prob[0], "new_prob": prob[i],
                        "old_pred": pred[0], "new_pred": pred[i], "nb_changed_pos": _tokens.count(selected_uid)}
            else:
                return {"status": "a", "alpha": alpha, "tokens": candi_tokens[i],
                        "old_uid": selected_uid, "new_uid": candi_token[i],
                        "old_prob": prob[0], "new_prob": prob[i],
                        "old_pred": pred[0], "new_pred": pred[i], "nb_changed_pos": _tokens.count(selected_uid)}
        else:
            pass

    def __printRes(self, _iter=None, _res=None, _prefix="  => "):
        if _res['status'].lower() == 's':   # Accepted & successful
            print("%s iter %d, SUCC! %s => %s (%d => %d, %.5f => %.5f) a=%.3f" % \
                  (_prefix, _iter, _res['old_uid'], _res['new_uid'],
                   _res['old_pred'], _res['new_pred'],
                   _res['old_prob'][_res['old_pred']],
                   _res['new_prob'][_res['old_pred']], _res['alpha']), flush=True)
        elif _res['status'].lower() == 'r': # Rejected
            print("%s iter %d, REJ. %s => %s (%d => %d, %.5f => %.5f) a=%.3f" % \
                  (_prefix, _iter, _res['old_uid'], _res['new_uid'],
                   _res['old_pred'], _res['new_pred'],
                   _res['old_prob'][_res['old_pred']],
                   _res['new_prob'][_res['old_pred']], _res['alpha']), flush=True)
        elif _res['status'].lower() == 'a': # Accepted
            print("%s iter %d, ACC! %s => %s (%d => %d, %.5f => %.5f) a=%.3f" % \
                  (_prefix, _iter, _res['old_uid'], _res['new_uid'],
                   _res['old_pred'], _res['new_pred'],
                   _res['old_prob'][_res['old_pred']],
                   _res['new_prob'][_res['old_pred']], _res['alpha']), flush=True)
