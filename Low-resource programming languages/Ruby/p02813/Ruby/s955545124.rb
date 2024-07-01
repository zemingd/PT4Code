n = gets.to_i
p = gets.split().map(&:to_i)
q = gets.split().map(&:to_i)

numbers = [*1..n].permutation.to_a

puts (numbers.index(p) - numbers.index(q)).abs