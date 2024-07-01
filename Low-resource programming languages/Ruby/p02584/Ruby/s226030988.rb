x, k, d = gets.split.map(&:to_i)
pos = (x + k * d).abs
neg = (x - k * d).abs
puts pos < neg ? pos : neg