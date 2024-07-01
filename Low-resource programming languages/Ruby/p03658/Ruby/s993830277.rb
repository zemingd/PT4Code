N, K = gets.split.map(&:to_i)
L = gets.split.map(&:to_i)

puts L.sort_by{|v|-v}[0, K].inject(:+)