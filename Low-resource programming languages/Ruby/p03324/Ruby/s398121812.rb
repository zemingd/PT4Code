d, n = gets.split(" ").map{|t| t.to_i }
n = 101 if n == 100
puts (100 ** d) * n
