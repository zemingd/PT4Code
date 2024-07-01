N = int(input())
XS = list(map(int, input().split()))

def hitpoint(n, xs):
    acc = 0
    for x in xs:
        r = (x - n) ** 2
        acc += r
    return acc

ans = hitpoint(1, XS)
tmp = ans
for i in range(2, 100):
    ans = hitpoint(i, XS)
    if ans >= tmp:
        break
    tmp = ans

print(tmp)