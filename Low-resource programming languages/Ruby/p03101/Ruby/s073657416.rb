h, w = gets.chomp.split.map(&:to_i)
h_d, w_d = h, w = gets.chomp.split.map(&:to_i)
puts (h - h_d) * (w - w_d)