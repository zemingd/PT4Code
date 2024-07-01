from collections import Counter
N = int(input())
S = []
for i in range(N):
  S.append(input())

c = Counter(S)
list = []
word_list = []
for i in c.most_common():
    list.append(i[1])
  	word_list.append(i[0])
list_max = list.most_common()
result_list = word_list[0:list_max]
for x in list_max.sort():
    print(x)
