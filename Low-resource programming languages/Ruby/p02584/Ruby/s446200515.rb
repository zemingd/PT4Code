x, k, d = gets.chomp.split(" ").map(&:to_i)
x = x.abs
k2 = [x / d, k].min
m = k - k2
puts (x - (k2 + m % 2) * d).abs