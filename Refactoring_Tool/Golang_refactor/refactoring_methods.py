import os, random, re

from processing_source_code import *


def rename_local_variable( method_string):
    local_var_list = extract_local_variable(method_string)
    if len(local_var_list) == 0:
        return method_string
    mutation_index = random.randint(0, len(local_var_list) - 1)
    variable_to_rename = local_var_list[mutation_index]
    replacement = word_synonym_replacement(variable_to_rename)
    if isinstance(replacement, str):
        replacement_str = replacement
    else:
        replacement_str = replacement[0]
    pattern = r'\b' + re.escape(variable_to_rename) + r'\b'
    new_method_string = re.sub(pattern, replacement_str, method_string)
    return new_method_string


def add_local_variable( method_string):
    local_var_list = extract_local_variable(method_string)
    if len(local_var_list) == 0:
        return method_string

    mutation_index = random.randint(0, len(local_var_list) - 1)
    match_ret = re.search('.+' + local_var_list[mutation_index] + '.+' + ':=' + '.+', method_string)
    if (match_ret) and ('for' not in match_ret.group()) and ('if' not in match_ret.group()):
        var_definition = match_ret.group()
        if type(word_synonym_replacement(local_var_list[mutation_index])) == str:
            new_var_definition = var_definition.replace(local_var_list[mutation_index],
                                                        word_synonym_replacement(local_var_list[mutation_index]))
        else:
            new_var_definition = var_definition.replace(local_var_list[mutation_index],
                                                        word_synonym_replacement(local_var_list[mutation_index])[
                                                            0])
        new_var_definition = new_var_definition + '\n' + var_definition.split(':=')[0] + '=' + \
                             new_var_definition.split(':=')[0] + '\n'
        method_string = method_string.replace(var_definition, var_definition + '\n' + new_var_definition)
        return method_string
    else:
        match_ret = re.search('var' + '.+' + local_var_list[mutation_index] + '.+' + '=' + '.+', method_string)
        if (match_ret) and ('for' not in match_ret.group()) and ('if' not in match_ret.group()):
            var_definition = match_ret.group()
            var_definition_twine = var_definition
            var = var_definition_twine.split('=')[0]
            var = var.split()[1:-1]
            cleaned_list = [i.strip(',') for i in var]
            new_var_definition = var_definition
            for i in cleaned_list:
                if type(word_synonym_replacement(i)) == str:
                    new_var_definition = new_var_definition.replace(i, word_synonym_replacement(i))
                else:
                    new_var_definition = new_var_definition.replace(i, word_synonym_replacement(i)[0])
            var = var_definition.split('=')[0]
            var = var.split()[1:-1]
            var = ''.join(var)
            new_var = new_var_definition.split('=')[0]
            new_var = new_var.split()[1:-1]
            new_var = ''.join(new_var)
            new_var_definition = new_var_definition + '\n' + var + '=' + new_var + '\n'
            method_string = method_string.replace(var_definition, var_definition + '\n' + new_var_definition)
            return method_string
        else:
            return method_string


def duplication( method_string):
    local_var_list = extract_local_variable(method_string)
    if len(local_var_list) == 0:
        return method_string
    mutation_index = random.randint(0, len(local_var_list) - 1)
    match_ret = re.search('.+' + local_var_list[mutation_index] + '.+' + ':=' + '.+', method_string)
    if (match_ret) and ('for' not in match_ret.group()) and ('if' not in match_ret.group()):
        var_definition = match_ret.group()
        new_var_definition = var_definition.replace(':=', '=')
        method_string = method_string.replace(var_definition, var_definition + '\n' + new_var_definition)
        return method_string
    else:
        match_ret = re.search('var' + '.+' + local_var_list[mutation_index] + '.+' + '=' + '.+', method_string)
        if (match_ret) and ('for' not in match_ret.group()) and ('if' not in match_ret.group()):
            var_definition = match_ret.group()
            var = var_definition.split('=')[0]
            var_twine = var_definition.split('=')[1]
            var = var.split()[1:-1]
            var = ''.join(var)
            new_var_definition = var + '=' + var_twine
            method_string = method_string.replace(var_definition, var_definition + '\n' + new_var_definition)
            return method_string
        else:
            return method_string


def rename_api( method_string):
    match_ret = re.findall(r'\bfunc\s+(\w+)', method_string)
    if 'main' in match_ret:
        match_ret.remove('main')
    if match_ret != []:
        api_name = random.choice(match_ret)[1:-1]
        if type(word_synonym_replacement(api_name)) == str:
            return method_string.replace(api_name, word_synonym_replacement(api_name))
        else:
            return method_string.replace(api_name, word_synonym_replacement(api_name)[0])
    else:
        return method_string


def rename_method_name( method_string):
    method_name = extract_method_name(method_string)
    if method_name:
        if type(word_synonym_replacement(method_name)) == str:
            return method_string.replace(method_name, word_synonym_replacement(method_name))
        else:
            return method_string.replace(method_name, word_synonym_replacement(method_name)[0])
    else:
        return method_string


def rename_argument( method_string):
    arguments_list = extract_argument(method_string)
    if len(arguments_list) == 0:
        return method_string
    mutation_index = random.randint(0, len(arguments_list) - 1)
    org_argument = arguments_list[mutation_index][0]
    org_argument_twine = org_argument.split()
    org_argument_twine = org_argument[0]
    if isinstance(word_synonym_replacement(org_argument_twine), str):
        new_argument = word_synonym_replacement(org_argument_twine)
        replacement = re.sub(r'\b' + re.escape(org_argument_twine) + r'\b', new_argument, org_argument_twine)
        method_string = re.sub(r'\b' + re.escape(org_argument_twine) + r'\b', replacement, method_string)
    else:
        new_argument = word_synonym_replacement(org_argument_twine)[0]
        replacement = re.sub(r'\b' + re.escape(org_argument_twine) + r'\b', new_argument, org_argument_twine)
        method_string = re.sub(r'\b' + re.escape(org_argument_twine) + r'\b', replacement, method_string)
    return method_string


def return_optimal( method_string):
    if 'return ' in method_string:
        return_statement = method_string[
                           method_string.find('return '): method_string.find('\n', method_string.find('return ') + 1)]
        return_object = return_statement.replace('return ', '')
        if return_object == 'nil':
            return method_string
        optimal_statement = 'hsiwnaxgw := ' + return_object + '\nauwbxtqd := &hsiwnaxgw\n' + \
                            '\nif auwbxtqd != nil{\n' + '\treturn ' + return_object + '\n} else{\n\t' + 'return 0\n}'
        method_string = method_string.replace(return_statement, optimal_statement)
    return method_string


def enhance_for_loop( method_string):
    for_loop_list = extract_for_loop(method_string)
    if for_loop_list == []:
        return method_string
    mutation_index = random.randint(0, len(for_loop_list) - 1)
    for_text = for_loop_list[mutation_index]
    for_info = for_text[for_text.find('for ') + 3: for_text.find('{')]
    for_body = for_text[for_text.find('{') + 1: for_text.rfind('}', -1, 10)]
    if 'range' in for_info:
        loop_bar = for_info.split(':=')[-1].strip().split()[-1].strip()
        loop_var = for_info.split(':=')[0].strip().split(',')[-1].strip()
        if loop_bar == None or loop_bar == '' or loop_var == None or loop_var == '':
            return method_string
        new_for_info = '  i := 0; i < ' + ' len(' + loop_bar + ') ; i ++'
        method_string = method_string.replace(for_info, new_for_info)
        pattern = r'\b' + re.escape(loop_var) + r'\b'
        new_for_body = re.sub(pattern, loop_bar + '[i]', for_body)
        method_string = method_string.replace(for_body, new_for_body)
        return method_string
    else:
        if for_info.count(';') == 2:
            loop_cond = for_info.split(';')[1].strip()
            if loop_cond.strip() != '':
                new_loop_cond = loop_cond + '+ 0'
                method_string = method_string.replace(loop_cond, new_loop_cond)
                return method_string
            else:
                return method_string
        else:
            return method_string


def add_print( data):
    statement_list = data.split('\n')
    func_start_index = None
    func_end_index = None
    return_positions = []
    bracket_counter = 0

    for i, statement in enumerate(statement_list):
        trimmed_statement = statement.strip()
        if 'func' in trimmed_statement and '{' in trimmed_statement:
            func_start_index = i
            bracket_counter += 1
            break

    if func_start_index is not None:
        for i in range(func_start_index + 1, len(statement_list)):
            statement = statement_list[i].strip()
            if '{' in statement:
                bracket_counter += statement.count('{')
            if '}' in statement:
                bracket_counter -= statement.count('}')
                if bracket_counter == 0:
                    func_end_index = i
                    break
            elif 'return' in statement:
                return_positions.append(i)
    else:
        return data
    if (len(return_positions) != 0):
        func_end_index = random.choice(return_positions)
    else:
        func_end_index = func_end_index
    mutation_index = random.randint(func_start_index + 1, func_end_index)
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
    if 'fmt' in data:
        new_statement += 'fmt.Println("' + str(random.choice(word_synonym_replacement(statement)[1])) + '")'
        statement_list_new = statement_list
        statement_list_new[mutation_index] = '\n' + new_statement + '\n' + statement
        method_string = '\n'.join(statement_list_new)
        return method_string
    else:
        index = data.find('func')
        if index != -1:
            new_statement += 'fmt.Println("' + str(random.choice(word_synonym_replacement(statement)[1])) + '")'
            statement_list_new = statement_list
            statement_list_new[mutation_index] = '\n' + new_statement + '\n' + statement
            method_string = '\n'.join(statement_list_new)
            index = method_string.find('func')
            method_string = method_string[:index] + 'import ("fmt") \n f' + method_string[index + 1:]
            return method_string
        else:
            return data


def enhance_if( method_string):
    if_list = extract_if(method_string)
    if (len(if_list) == 0):
        return method_string
    mutation_index = random.randint(0, len(if_list) - 1)
    if_text = if_list[mutation_index]
    if_info = if_text[if_text.find('if ') + 3: if_text.find('{')]
    new_if_info = if_info
    if 'true' in if_info:
        new_if_info = if_info.replace('true', ' (0==0) ')
    if 'flase' in if_info:
        new_if_info = if_info.replace('flase', ' (1==0) ')
    if '!=' in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info and '&&' not in if_info and '||' not in if_info:
        new_if_info = '!reflect' + '.DeepEqual( ' + if_info.split('!=')[0] + ',' + if_info.split('!=')[1] + ')'
        if "reflect" not in method_string:
            index = method_string.find('func')
            method_string = method_string[:index] + '\nimport ("reflect")\n' + method_string[index:]
    if '<' in if_info and '<=' not in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info and '&&' not in if_info and '||' not in if_info:
        new_if_info = if_info.split('<')[1] + ' > ' + if_info.split('<')[0]
    if '>' in if_info and '>=' not in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info and '&&' not in if_info and '||' not in if_info:
        new_if_info = if_info.split('>')[1] + ' < ' + if_info.split('>')[0]
    if '<=' in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info and '&&' not in if_info and '||' not in if_info:
        new_if_info = if_info.split('<=')[1] + ' >= ' + if_info.split('<=')[0]
    if '>=' in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info and '&&' not in if_info and '||' not in if_info:
        new_if_info = if_info.split('>=')[1] + ' <= ' + if_info.split('>=')[0]
    if '==' in if_info and '(' not in if_info and 'and' not in if_info and 'or' not in if_info and '&&' not in if_info and '||' not in if_info:
        new_if_info = 'reflect' + '.DeepEqual( ' + if_info.split('==')[0] + ',' + if_info.split('==')[1] + ')'
        if "reflect" not in method_string:
            index = method_string.find('func')
            method_string = method_string[:index] + '\nimport ("reflect")\n' + method_string[index:]
    return method_string.replace(if_info, new_if_info)


def add_argumemts( method_string):
    arguments_list = extract_argument(method_string)
    arguments_info = method_string[method_string.find('(') + 1: method_string.find(')')]
    if len(arguments_list) == 0:
        arguments_info = '' + word_synonym_replacement(extract_method_name_fornil(method_string))[
            0] + ' ...int'
        pattern = r'\bfunc\s+(?!main\b)\w+\('
        match = re.search(pattern, method_string)
        if match:
            idx = match.end() - 1
            return method_string[0: idx + 1] + arguments_info + method_string[idx + 1:]
        else:
            return method_string
    mutation_index = random.randint(0, len(arguments_list) - 1)
    org_argument = arguments_list[mutation_index][-1]
    org_argument_twine = org_argument.split()[0]
    new_argument = word_synonym_replacement(org_argument_twine)
    pattern = r'func\s+\w+\s*\(([^)]*\b' + re.escape(org_argument) + r'\b[^)]*)\)'
    arguments_info = re.search(pattern, method_string)
    arguments_info = arguments_info.group()
    arguments_info = arguments_info[arguments_info.find('('): arguments_info.find(')') + 1]
    if (type(new_argument) == str):
        new_arguments_info = arguments_info.replace(org_argument, org_argument + ', ' + new_argument + ' ...int')
        method_string = method_string.replace(arguments_info, new_arguments_info, 1)
        return method_string
    else:
        new_arguments_info = arguments_info.replace(org_argument, org_argument + ', ' + new_argument[0] + ' ...int')
        method_string = method_string.replace(arguments_info, new_arguments_info, 1)
        return method_string


def enhance_filed( method_string):
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
    extra_info = "\n" + space_str + 'shxuwmakxa := &' + arguments_list[mutation_index][0].strip().split()[0] + '\n' + \
                 "if " + 'shxuwmakxa' + \
                 ' == nil {  fmt.Println("please check your input") }'
    escaped_regex = re.escape(arguments_list[mutation_index][0])
    param_regex = re.compile(escaped_regex)
    match = param_regex.search(method_string)
    ind = match.start()
    if 'fmt' in method_string:
        method_string = method_string[0: method_string.find('{', ind) + 1] + extra_info + method_string[
                                                                                          method_string.find('{',
                                                                                                             ind) + 1:]

        return method_string
    else:
        index = method_string.find('func')
        if index != -1:
            method_string = method_string[:index] + 'import ("fmt") \n f' + method_string[index + 1:]
            method_string = method_string[0: method_string.find('{', ind) + 1] + extra_info + method_string[
                                                                                              method_string.find('{',
                                                                                                                 ind) + 1:]
            return method_string
        else:
            return method_string


def apply_plus_zero_math( data):
    variable_list = extract_local_variable(data)
    success_flag = 0
    for variable_name in variable_list:
        match_ret = re.findall(variable_name + r'\s*:=\s*\b.+\n', data)
        if len(match_ret) > 0:
            code_line = match_ret[0]
            value = code_line.split('\n')[0].split(':=')[1]
            ori_value = value
            if ('+' in value or '-' in value or '*' in value or '/' in value or '//' in value) and '++' not in value and '--' not in value and '**' not in value:
                value = value + ' + 0'
                success_flag = 1
            try:
                value_float = float(value)
                value = value + ' + 0'
                success_flag = 1
            except ValueError:
                pass
            if success_flag == 1:
                mutant = code_line.split(ori_value)[0]
                mutant = mutant + value + '\n'
                method_string = data.replace(code_line, mutant)
                if method_string != None:
                    return method_string
                else:
                    return data
        elif len(match_ret) == 0:
            for variable_name in variable_list:
                match_ret = re.findall(variable_name + r'\s*\w*\s*=\s*\b.+\n', data)
                if len(match_ret) > 0:
                    code_line = match_ret[0]
                    value = code_line.split('\n')[0].split('=')[1]
                    ori_value = value
                    if ('+' in value or '-' in value or '*' in value or '/' in value or '//' in value) and '++' not in value and '--' not in value and '**' not in value:
                        value = value + ' + 0'
                        success_flag = 1
                    try:
                        value_float = float(value)
                        value = value + ' + 0'
                        success_flag = 1
                    except ValueError:
                        pass
                    if success_flag == 1:
                        mutant = code_line.split(ori_value)[0]
                        mutant = mutant + value + '\n'
                        method_string = data.replace(code_line, mutant)
                        if method_string != None:
                            return method_string
                        else:
                            return data
    if success_flag == 0:
        return data



def dead_branch_if_else( data):
    statement_list = data.split('\n')
    func_start_index = None
    func_end_index = None
    return_positions = []
    bracket_counter = 0

    for i, statement in enumerate(statement_list):
        trimmed_statement = statement.strip()
        if 'func' in trimmed_statement and '{' in trimmed_statement:
            func_start_index = i
            bracket_counter += 1
            break

    if func_start_index is not None:
        for i in range(func_start_index + 1, len(statement_list)):
            statement = statement_list[i].strip()
            if '{' in statement:
                bracket_counter += statement.count('{')
            if '}' in statement:
                bracket_counter -= statement.count('}')
                if bracket_counter == 0:
                    func_end_index = i
                    break
            elif 'return' in statement:
                return_positions.append(i)
    else:
        return data
    if (len(return_positions) != 0):
        func_end_index = random.choice(return_positions)
    else:
        func_end_index = func_end_index
    mutation_index = random.randint(func_start_index + 1, func_end_index)
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
    statement_list_new = statement_list
    statement_list_new[mutation_index] = '\n' + new_statement + '\n' + statement
    method_string = '\n'.join(statement_list_new)
    return method_string


def dead_branch_if( data):
    statement_list = data.split('\n')
    func_start_index = None
    func_end_index = None
    return_positions = []
    bracket_counter = 0

    for i, statement in enumerate(statement_list):
        trimmed_statement = statement.strip()
        if 'func' in trimmed_statement and '{' in trimmed_statement:
            func_start_index = i
            bracket_counter += 1
            break

    if func_start_index is not None:
        for i in range(func_start_index + 1, len(statement_list)):
            statement = statement_list[i].strip()
            if '{' in statement:
                bracket_counter += statement.count('{')
            if '}' in statement:
                bracket_counter -= statement.count('}')
                if bracket_counter == 0:
                    func_end_index = i
                    break
            elif 'return' in statement:
                return_positions.append(i)
    else:
        return data
    if (len(return_positions) != 0):
        func_end_index = random.choice(return_positions)
    else:
        func_end_index = func_end_index
    mutation_index = random.randint(func_start_index + 1, func_end_index)
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
    statement_list_new = statement_list
    statement_list_new[mutation_index] = '\n' + new_statement + '\n' + statement
    method_string = '\n'.join(statement_list_new)
    return method_string


def dead_branch_for_imitate_while( data):
    statement_list = data.split('\n')
    func_start_index = None
    func_end_index = None
    return_positions = []
    bracket_counter = 0

    for i, statement in enumerate(statement_list):
        trimmed_statement = statement.strip()
        if 'func' in trimmed_statement and '{' in trimmed_statement:
            func_start_index = i
            bracket_counter += 1
            break

    if func_start_index is not None:
        for i in range(func_start_index + 1, len(statement_list)):
            statement = statement_list[i].strip()
            if '{' in statement:
                bracket_counter += statement.count('{')
            if '}' in statement:
                bracket_counter -= statement.count('}')
                if bracket_counter == 0:
                    func_end_index = i
                    break
            elif 'return' in statement:
                return_positions.append(i)
    else:
        return data
    if (len(return_positions) != 0):
        func_end_index = random.choice(return_positions)
    else:
        func_end_index = func_end_index
    mutation_index = random.randint(func_start_index + 1, func_end_index)
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
    new_statement += get_branch_for_imitate_while_mutant()
    statement_list_new = statement_list
    statement_list_new[mutation_index] = '\n' + new_statement + '\n' + statement
    method_string = '\n'.join(statement_list_new)
    return method_string


def dead_branch_for( data):
    statement_list = data.split('\n')
    func_start_index = None
    func_end_index = None
    return_positions = []
    bracket_counter = 0

    for i, statement in enumerate(statement_list):
        trimmed_statement = statement.strip()
        if 'func' in trimmed_statement and '{' in trimmed_statement:
            func_start_index = i
            bracket_counter += 1
            break

    if func_start_index is not None:
        for i in range(func_start_index + 1, len(statement_list)):
            statement = statement_list[i].strip()
            if '{' in statement:
                bracket_counter += statement.count('{')
            if '}' in statement:
                bracket_counter -= statement.count('}')
                if bracket_counter == 0:
                    func_end_index = i
                    break
            elif 'return' in statement:
                return_positions.append(i)
    else:
        return data
    if (len(return_positions) != 0):
        func_end_index = random.choice(return_positions)
    else:
        func_end_index = func_end_index
    mutation_index = random.randint(func_start_index + 1, func_end_index)
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
    statement_list_new = statement_list
    statement_list_new[mutation_index] = '\n' + new_statement + '\n' + statement
    method_string = '\n'.join(statement_list_new)
    return method_string


def dead_branch_switch( data):
    statement_list = data.split('\n')
    func_start_index = None
    func_end_index = None
    return_positions = []
    bracket_counter = 0

    for i, statement in enumerate(statement_list):
        trimmed_statement = statement.strip()
        if 'func' in trimmed_statement and '{' in trimmed_statement:
            func_start_index = i
            bracket_counter += 1
            break

    if func_start_index is not None:
        for i in range(func_start_index + 1, len(statement_list)):
            statement = statement_list[i].strip()
            if '{' in statement:
                bracket_counter += statement.count('{')
            if '}' in statement:
                bracket_counter -= statement.count('}')
                if bracket_counter == 0:
                    func_end_index = i
                    break
            elif 'return' in statement:
                return_positions.append(i)
    else:
        return data
    if (len(return_positions) != 0):
        func_end_index = random.choice(return_positions)
    else:
        func_end_index = func_end_index
    mutation_index = random.randint(func_start_index + 1, func_end_index)
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
    new_statement += get_branch_switch_mutant()
    statement_list_new = statement_list
    statement_list_new[mutation_index] = '\n' + new_statement + '\n' + statement
    method_string = '\n'.join(statement_list_new)
    return method_string



if __name__ == '__main__':
    filename = 'test.py'
    open_file = open(filename, 'r', encoding='ISO-8859-1')
    code = open_file.read()
    Class_list, raw_code = extract_class(code)
    for class_name in Class_list:
        function_list, class_name = extract_function(class_name)
    candidate_code = function_list[0]
    mutated_code = apply_plus_zero_math(candidate_code)
    print(candidate_code)
    print(mutated_code)
