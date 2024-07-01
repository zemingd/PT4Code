n = gets.to_i
p n == 1 ? 0 : (1..n-1).inject(:+)