import heapq
n,m=map(int,input().split(" "))
a=list(map(int,input().split(" ")))
for i in range(len(a)):
    a[i]*=-1
heapq.heapify(a)
for i in range(m):
    maxVal=heapq.heappop(a)*-1
    maxVal/=2
    heapq.heappush(a,int(maxVal*-1))
print((sum(a)*-1))
