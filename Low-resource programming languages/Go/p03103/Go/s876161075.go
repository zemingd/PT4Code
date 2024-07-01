n,m=map(int,input().split(" "))
diction={}
price,number=0,m
for i in range(n):
  a,b=map(int,input().split(" "))
  diction[a]=b
sortdic=sorted(diction.items())
for i in sortdic:
  if number>0:
    price+=i[0]*min(i[1],number)
    number-=min(i[1],number)
    if number==0:
      break
print(price)