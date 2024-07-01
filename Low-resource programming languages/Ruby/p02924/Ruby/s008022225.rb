N = gets.to_i
p 1 and exit if N == 1
p (1..(N - 1)).inject{|sum, v| sum + v}