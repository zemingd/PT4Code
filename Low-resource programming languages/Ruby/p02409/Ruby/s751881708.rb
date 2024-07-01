bilding = [[[0 for x in range(10)] for x in range(3)]for x in range(4)]
 
n = int(input())
for i in range(n):
    b, f, r, v = map(int, raw_input().split())
    bilding[b-1][f-1][r-1] += v
 
for i in range(4):
    for j in range(3):
        print(" "+" ".join(map(str,bilding[i][j])))
    if i != 3:
        print "#"*20