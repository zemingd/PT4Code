station = input()
a = False
b = False
for i in station:
    if i == 'A':
        a = True
    if i == 'B':
        b = True

if a and b:
    print("Yes")
else:
    print("No")