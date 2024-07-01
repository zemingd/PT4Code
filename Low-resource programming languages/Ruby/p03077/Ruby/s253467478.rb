n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
ans = 0

i = n / a
l = n % a
ans += i + 1

i = l / b
l = l % b
ans += i + 1
i = l / c
l = l % c
ans += i + 1
i = l / d
l = l % d
ans += i + 1
i = l / e
l = l % e
ans += i + 1

p ans
