n= gets.to_i
array_p = gets.split(" ").map(&:to_i)
array_q = gets.split(" ").map(&:to_i)

array = (1..n).to_a

p = array.permutation(n).to_a
a = p.index(array_p)
b = p.index(array_q)

puts (a - b).abs
