num = gets.to_i
p = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i)

all = (1..num).to_a.permutation(num).to_a

p_num = all.find_index(p) + 1
x_num = all.find_index(x) + 1

puts (p_num - x_num).abs
