n = gets.to_i
ps = gets.chomp.split.join.to_i
qs = gets.chomp.split.join.to_i

array = [*1..n].permutation.map{|a| a.join.to_i}

puts (array.index(ps) - array.index(qs)).abs
