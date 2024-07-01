x = gets.to_i
a = (x / 11) * 2
a += 1
a += 1 if x % 11 > 6
a -= 1 if x % 11 == 0
p a
