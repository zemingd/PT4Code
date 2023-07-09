from textaugment import EDA
import nltk, glob, os, random

nltk.download('stopwords')

nltk.download('wordnet')

EDA = EDA(random_state=1)

def code2text(dir):
    f = open(dir, 'r',encoding='utf-8')
    lines = f.readlines()
    list = []
    for line in lines:
        list.append(line)
    return list


def text_augment(list):
    k = random.randint(0,len(list)-1)
    p = random.randint(0,len(list)-1)
    try:
        swap1 = list[k]
        swap2 = list[p]
    except IndexError:
        p = k
        swap1 = list[k]
        swap2 = list[p]
        list[k] = swap2
        list[p] = swap1
    else:
        list[k] = swap2
        list[p] = swap1
        pass
    return list


def code2string(list):
    sequence = ''
    for i in range(len(list)):
        sequence += list[i]
        pass
    return sequence


def text2code(dir, data):
    file = open(dir, 'w+')
    file.write(data)
    file.close()


if __name__ == '__main__':
    path = 'Your path'
    folder_path = glob.glob(path)

    for i in range(1):
        path_original = folder_path[i]
        files = path_original
        for j in files:
            try:
                filename = path_original
                code2line = code2text(filename)
                code_au = text_augment(code2line)
                code_au = code2string(code_au)
            except TypeError:
                filename = path_original
                code2line = code2text(filename)
                code_au = code2line
                code = ''
                for k in range(len(code_au)):
                    code += code_au[k]
                text2code(filename.replace('Your path', 'Your path_RS'), code)
            else:
                text2code(filename.replace('Your path', 'Your path_RS'), code_au)

