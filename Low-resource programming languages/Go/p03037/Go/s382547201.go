n, m = map(int,input().split())

a = set()
for i in range(m):
    l, r = map(int,input().split())
    b = set()
    for j in range(l, r + 1):
        b.add(j)
    a = a & b
    if i == 0:
        a = b

print(len(a))

