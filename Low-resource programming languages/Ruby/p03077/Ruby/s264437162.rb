n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
all = [a,b,c,d,e]

min = all.min
index = all.index(min)
ans = index + (n % min == 0 ? n / min : n / min + 1) + 4 - index

puts ans
