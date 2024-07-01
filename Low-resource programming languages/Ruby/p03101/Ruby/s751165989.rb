h, w = gets.chomp.split.map(&:to_i)
lh, lw = gets.chomp.split.map(&:to_i)
puts (h - lh)*(w - lw)
