from textaugment import EDA, Translate
import nltk, glob, os
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
   sequence = ''
   for i in range(len(list)):
       sequence += list[i]
   T = Translate(src='en', to='fr')
   sequence = T.augment(sequence)
   return sequence


def text2code(dir, data):
   file = open(dir, 'w+')
   file.write(data)
   file.close()


if __name__ == '__main__':


   path = 'Your path'
   folder_path = glob.glob(path)

   files = folder_path
   for j in files:
        try:
            filename =  j
            code2line = code2text(filename)
            code_au = text_augment(code2line)
        except [TimeoutError]:
            filename =  j
            code2line = code2text(filename)
            code_au = code2line
            code = ''
            for k in range(len(code_au)):
                code += code_au[k]
            text2code(filename.replace('Your path', 'Your path_BT'), code)
        else:
            text2code(filename.replace('Your path', 'Your path_BT'), code_au)
