n = gets.to_i
arr = [*1..n].permutation.map(&:join)
puts (arr.index(gets.split.join) - arr.index(gets.split.join)).abs