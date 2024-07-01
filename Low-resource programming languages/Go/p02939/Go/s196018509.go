S = input()
S_len = len(S)
count = 1

for i in range(1,S_len):
  if S[i - 1] != S [i]:
    count=count + 1

if S_len > 1:
  count=count + 1
print(count)


