N = gets.to_i
as = gets.split.map(&:to_i)
ans = as.reduce(0) { |acc, a| acc + a - 1 }
puts ans
