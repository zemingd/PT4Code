x = gets.to_i
a = (x / 11 + 1) * 2
a -= 1 if x % 11 < 6
p a
