
n=int(input())
lis=[]
ans=0
for i in range(n):
  lis.append(list(input()))
while(len(lis)>0) :
  aim=lis[0]
  sum=[]
  for k in range(len(lis)):
    if(set(aim)==set(lis[k])):
      sum.append(k)
  amount=len(sum)
  for m in range(amount):
    ans+=m
    if(len(lis)>0):
      lis.pop(sum[m]-m)
print(ans)