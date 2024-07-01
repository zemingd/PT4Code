x = gets.to_i
a = x / 11
b = x % 11
c = 0
c += 1 if b > 0
c += 1 if b > 6
p a * 2 + c
