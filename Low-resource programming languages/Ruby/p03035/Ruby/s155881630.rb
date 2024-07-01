a, b = gets.chomp.split.map(&:to_i)
p((a > 12) ? b : ((a >= 6) ? b/2 : 0))
