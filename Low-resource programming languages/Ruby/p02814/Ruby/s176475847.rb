N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
m = A.map{|a| a / 2 }.inject(&:lcm)
puts (M / m + 1) / 2
