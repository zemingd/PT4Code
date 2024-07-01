H, W = map(int, input().split())

if H == 1 | W == 1:
    print(1)

ans = H*W//2
ans += ans % 2

print(ans)
