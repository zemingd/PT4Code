num = gets.chomp.to_i
array = [*(1..num)]
list = array.permutation(num).to_a
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
p (list.find_index(a) - list.find_index(b)).abs