# #.がなければ文句ない
n = int(input())
arr = list(input())
try:
    first_black = arr.index("#")
except:
    print(0)
    exit()

c = 0
for i in range(first_black, n):
    if arr[i] == ".":
        c += 1

print(min(arr.count("#"), c))
