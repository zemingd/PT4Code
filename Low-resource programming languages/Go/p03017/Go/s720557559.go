import sys
n, a, b, c, d = [int(x) for x in input().split()]
s = input()
for i in range(a, max(c, d)):
    if s[i - 1: i + 1] == "##":
        print("No")
        sys.exit()
if c < d:
    print("Yes")
    sys.exit()
for i in range(b, d - 1):
    if s[i - 1:i + 2] == "...":
        print("Yes")
        sys.exit()
print("No")