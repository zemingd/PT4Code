digits = int(input())
str = input()

num = int(digits/2)

str_forward = str[num:]
str_backward = str[:num]


if str_forward == str_backward:
 print("Yes")
else:
 print("No")
~               