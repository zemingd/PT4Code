n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)
lists = [*1..n].permutation.to_a
ans = (lists.index(p)-lists.index(q)).abs
puts ans
