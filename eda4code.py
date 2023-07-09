from textaugment import EDA, Translate
import nltk, glob, os, random
from random import shuffle

nltk.download('stopwords')
nltk.download('wordnet')

EDA = EDA(random_state=1)

def code2text(dir):
    f = open(dir, 'r', encoding='utf-8')
    lines = f.readlines()
    list = []
    for line in lines:
        list.append(line)
    return list


def text_augment(list, method):
    sequence = ''
    for i in range(len(list)):
        sequence += list[i]

        if method == 'SR':
            sequence = EDA.synonym_replacement(sequence)
            sequence = sequence + '.<UNK>'

        elif method == 'RD':
            sequence = EDA.random_deletion(sequence, p=0.01)
            sequence = sequence + '.<UNK>'

        elif method == 'RI':
            sequence = EDA.random_insertion(sequence)
            sequence = sequence + '.<UNK>'

    sequence = sequence.replace('.<UNK>', '\n')
    return sequence


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
                code_au = text_augment(code2line, method='SR')
                code_au = code2string(code_au)
            except TypeError:
                filename = path_original
                code2line = code2text(filename)
                code_au = code2line
                code = ''
                for k in range(len(code_au)):
                    code += code_au[k]
                text2code(filename.replace('Your_path', 'Your_path_SR'), code)
            else:
                text2code(filename.replace('Your_path', 'Your_path_SR'), code_au)





























