n = gets.to_i
p = gets.split(' ').map!(&:to_i)
q = gets.split(' ').map!(&:to_i)

arr = (1..n).to_a.permutation(n).to_a

puts ((arr.index(p) + 1) - (arr.index(q) + 1)).abs
