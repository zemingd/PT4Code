a, b = map(int, input().split())
lower, greater = sorted([a, b])

if greater-lower >= 2:
    print(greater+(greater-1))
else:
    print(greater+lower)
