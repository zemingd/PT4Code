N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i).sort
a = H[0..-K-1].inject(:+)
p a ? a : 0