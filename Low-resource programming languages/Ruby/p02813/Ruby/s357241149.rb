n = gets.to_i
a = [*1..n].permutation.map(&:join)

p = gets.split.join
q = gets.split.join

puts (a.find_index(p) - a.find_index(q)).abs
