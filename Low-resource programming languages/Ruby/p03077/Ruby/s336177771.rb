# < 2^50
n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

caps = [a, b, c, d, e]
cap = caps.min # bottle neck

groups = (n + cap - 1) / cap
p 4 + groups
