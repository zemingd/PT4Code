import os, random, re

from processing_source_code import *


def rename_local_variable(method_string):
    local_var_list = extract_local_variable(method_string)
    if len(local_var_list) == 0:
        return method_string

    mutation_index = random.randint(0, len(local_var_list) - 1)
    return method_string.replace(local_var_list[mutation_index], word_synonym_replacement(local_var_list[mutation_index])[0])


def add_local_variable(method_string):
    local_var_list = extract_local_variable(method_string)
    if len(local_var_list) == 0:
        return method_string

    mutation_index = random.randint(0, len(local_var_list) - 1)
    match_ret = re.search(local_var_list[mutation_index] + '=\w', method_string)
    if match_ret is None:
        match_ret = re.search(local_var_list[mutation_index] + ' = ', method_string)
    if match_ret is None:
        match_ret = re.search(local_var_list[mutation_index] + '= ', method_string)
    if match_ret:
        var_definition      = match_ret.group()[:-1]
        new_var_definition  = var_definition.replace(local_var_list[mutation_index], word_synonym_replacement(local_var_list[mutation_index])[0])
        method_string       = method_string.replace(var_definition, var_definition + '' + new_var_definition)
        return method_string
    else:
        return method_string


def duplication(method_string):
    local_var_list = extract_local_variable(method_string)
    if len(local_var_list) == 0:
        return method_string
    mutation_index = random.randint(0, len(local_var_list) - 1)
    match_ret = re.search(local_var_list[mutation_index] + '=\w', method_string)
    if match_ret is None:
        match_ret = re.search(local_var_list[mutation_index] + ' = ', method_string)
    if match_ret is None:
        match_ret = re.search(local_var_list[mutation_index] + '= ', method_string)
    if match_ret:
        var_definition = match_ret.group()[:-1]
        new_var_definition = var_definition
        method_string = method_string.replace(var_definition, var_definition + new_var_definition)
        # print(method_string)
        return method_string
    else:
        # print(method_string)
        return method_string


def rename_api(method_string):
    match_ret      = re.findall(' \s*\w+\s*\(', method_string)
    match_ret = match_ret[1:]
    if match_ret != []:
        api_name = random.choice(match_ret)[1:-1]
        return method_string.replace(api_name, word_synonym_replacement(api_name)[0])
    else:
        return method_string


def rename_method_name(method_string):
    method_name = extract_method_name(method_string)
    if method_name:
        return method_string.replace(method_name, word_synonym_replacement(method_name)[0])
    else:
        return method_string


def rename_argument(method_string):
    arguments_list = extract_argument(method_string)
    if len(arguments_list) == 0:
        return method_string

    mutation_index = random.randint(0, len(arguments_list) - 1)
    return method_string.replace(arguments_list[mutation_index], word_synonym_replacement(arguments_list[mutation_index]))


def return_optimal(method_string):
    if 'return ' in method_string:
        return_statement  = method_string[method_string.find('return ') : method_string.find('\n', method_string.find('return ') + 1)]
        return_object     = return_statement.replace('return ', '')
        if return_object == 'null':
            return method_string
        optimal_statement = 'return 0 if (' + return_object + ' == None) else ' + return_object
        method_string = method_string.replace(return_statement, optimal_statement)
    return method_string


def enhance_for_loop(method_string):
    for_loop_list = extract_for_loop(method_string)
    if for_loop_list == []:
        return method_string

    mutation_index = random.randint(0, len(for_loop_list) - 1)
    for_text = for_loop_list[mutation_index]
    for_info = for_text[for_text.find('(') + 1 : for_text.find(')')]
    if ' range(' in for_text:
        if ',' not in for_info:
            new_for_info = '0, ' + for_info
            method_string = method_string.replace(for_info, new_for_info)
        elif len(for_info.split(',')) == 2:
            new_for_info = for_info + ' ,1'
            method_string = method_string.replace(for_info, new_for_info)
        else:
            new_for_info = for_info + '+0'
            method_string = method_string.replace(for_info, new_for_info)
        return method_string

    else:
        return method_string


def add_print(method_string):
    statement_list = method_string.split('\n')
    mutation_index = random.randint(1, len(statement_list) - 1)
    statement      = statement_list[mutation_index]
    if statement == '':
        return method_string
    space_count = 0
    if mutation_index == len(statement_list) - 1:
        refer_line = statement_list[-1]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    else:
        refer_line = statement_list[mutation_index]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    new_statement = ''
    for _ in range(space_count):
        new_statement += ' '
    new_statement += 'print("' + str(random.choice(word_synonym_replacement(statement)[1])) + '")'
    method_string = method_string.replace(statement, '\n' + new_statement + '\n' + statement)
    return method_string


def enhance_if(method_string):
    if_list = extract_if(method_string)
    mutation_index = random.randint(0, len(if_list) - 1)
    if_text = if_list[mutation_index]
    if_info = if_text[if_text.find('if ') + 3: if_text.find(':')]
    new_if_info = if_info
    if 'true' in if_info:
        new_if_info = if_info.replace('true', ' (0==0) ')
    if 'flase' in if_info:
        new_if_info = if_info.replace('flase', ' (1==0) ')
    if '!=' in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info:
        new_if_info = if_info.replace('!=', ' is not ')
    if '<' in if_info and '<=' not in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info:
        new_if_info = if_info.split('<')[1] + ' > ' + if_info.split('<')[0]
    if '>' in if_info and '>=' not in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info:
        new_if_info = if_info.split('>')[1] + ' < ' + if_info.split('>')[0]
    if '<=' in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info:
        new_if_info = if_info.split('<=')[1] + ' >= ' + if_info.split('<=')[0]
    if '>=' in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info:
        new_if_info = if_info.split('>=')[1] + ' <= ' + if_info.split('>=')[0]
    if '==' in if_info:
        new_if_info = if_info.replace('==', ' is ')

    return method_string.replace(if_info, new_if_info)


def add_argumemts(method_string):
    arguments_list = extract_argument(method_string)
    arguments_info = method_string[method_string.find('(') + 1: method_string.find(')')]
    if len(arguments_list) == 0:
        arguments_info = word_synonym_replacement(extract_method_name(method_string))[0]
        return method_string[0 : method_string.find('()') + 1] + arguments_info + method_string[method_string.find('()') + 1 :]
    mutation_index = random.randint(0, len(arguments_list) - 1)
    org_argument = arguments_list[mutation_index]
    new_argument = word_synonym_replacement(arguments_list[mutation_index])
    new_arguments_info = arguments_info.replace(org_argument, org_argument + ', ' + new_argument)
    method_string = method_string.replace(arguments_info, new_arguments_info, 1)
    return method_string


def enhance_filed(method_string):
    arguments_list = extract_argument(method_string)
    line_list = method_string.split('\n')
    refer_line = line_list[1]
    if len(arguments_list) == 0:
        return method_string
    space_count = 0
    for char in refer_line:
        if char == ' ':
            space_count += 1
        else:
            break
    mutation_index = random.randint(0, len(arguments_list) - 1)
    space_str = ''
    for _ in range(space_count):
        space_str += ' '
    extra_info = "\n" + space_str + "if " + arguments_list[mutation_index].strip().split(' ')[-1] + " == None: print('please check your input')"
    method_string = method_string[0 : method_string.find(':') + 1] + extra_info + method_string[method_string.find(':') + 1 : ]
    return method_string


def apply_plus_zero_math(data):
    variable_list = extract_local_variable(data)
    success_flag = 0
    for variable_name in variable_list:
        match_ret = re.findall(variable_name + '\s*=\s\w*\n', data)
        if len(match_ret) > 0:
            code_line = match_ret[0]
            value = code_line.split('\n')[0].split('=')[1]
            ori_value = value
            if '+' in value or '-' in value or '*' in value or '/' in value or '//' in value:
                value = value + ' + 0'
                success_flag = 1
            try:
                value_float = float(value)
                value = value + ' + 0'
                success_flag = 1
            except ValueError:
                continue
            if success_flag == 1:
                mutant = code_line.split(ori_value)[0]
                mutant = mutant + value + '\n'
                method_string = data.replace(code_line, mutant)
                return method_string
    if success_flag == 0:
        return data


def dead_branch_if_else(data):
    statement_list = data.split('\n')
    mutation_index = random.randint(1, len(statement_list) - 1)
    statement = statement_list[mutation_index]
    space_count = 0
    if statement == '':
        return data
    if mutation_index == len(statement_list) - 1:
        refer_line = statement_list[-1]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    else:
        refer_line = statement_list[mutation_index]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    new_statement = ''
    for _ in range(space_count):
        new_statement += ' '
    new_statement += get_branch_if_else_mutant()
    method_string = data.replace(statement, '\n' + new_statement + '\n' + statement)
    return method_string


def dead_branch_if(data):
    statement_list = data.split('\n')
    mutation_index = random.randint(1, len(statement_list) - 1)
    statement = statement_list[mutation_index]
    space_count = 0
    if statement == '':
        return data
    if mutation_index == len(statement_list) - 1:
        refer_line = statement_list[-1]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    else:
        refer_line = statement_list[mutation_index]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    new_statement = ''
    for _ in range(space_count):
        new_statement += ' '
    new_statement += get_branch_if_mutant()
    method_string = data.replace(statement, '\n' + new_statement + '\n' + statement)

    return method_string


def dead_branch_while(data):
    statement_list = data.split('\n')
    mutation_index = random.randint(1, len(statement_list) - 1)
    statement = statement_list[mutation_index]
    space_count = 0
    if statement == '':
        return data
    if mutation_index == len(statement_list) - 1:
        refer_line = statement_list[-1]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    else:
        refer_line = statement_list[mutation_index]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    new_statement = ''
    print(space_count)
    for _ in range(space_count):
        new_statement += ' '
    new_statement += get_branch_while_mutant()
    method_string = data.replace(statement, '\n' + new_statement + '\n' + statement)
    # print(method_string)
    return method_string


def dead_branch_for(data):
    statement_list = data.split('\n')
    mutation_index = random.randint(1, len(statement_list) - 1)
    statement = statement_list[mutation_index]
    space_count = 0
    if statement == '':
        return data
    if mutation_index == len(statement_list) - 1:
        refer_line = statement_list[-1]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    else:
        refer_line = statement_list[mutation_index]
        for char in refer_line:
            if char == ' ':
                space_count += 1
            else:
                break
    new_statement = ''
    for _ in range(space_count):
        new_statement += ' '
    new_statement += get_branch_for_mutant()
    method_string = data.replace(statement, '\n' + new_statement + '\n' + statement)
    return method_string


if __name__ == '__main__':
    filename = 'test.py'
    open_file = open(filename, 'r', encoding='ISO-8859-1')
    code = open_file.read()
    Class_list, raw_code = extract_class(code)
    for class_name in Class_list:
        function_list, class_name = extract_function_python(class_name)
    candidate_code = function_list[0]
    mutated_code = apply_plus_zero_math(candidate_code)
    print(candidate_code)
    print(mutated_code)
