from fractions import gcd
n = int(input())
a = list(map(int, input().split()))
x = a[0]
ans = 0
for i in range(1, len(a)):
    x = (x * a[i]) // gcd(x, a[i])
for j in a:
    ans += (x - 1) % j
print(ans)