h, w = 2.times.map{ gets.split.map(&:to_i) }
puts (h[0] - w[0]) * (h[1] - w[1])