a = gets.chomp.to_i
b = gets.chomp.to_i

r = [a,b].sort

p 3 if r[0] == 1 && r[1] == 2
p 1 if r[0] == 2 && r[1] == 3
p 2 if r[0] == 1 && r[1] == 3
