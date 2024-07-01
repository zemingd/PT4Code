h, w = gets.chomp.split(" ").map(&:to_i)
hh, ww = gets.chomp.split(" ").map(&:to_i)
puts (h - hh) * (w - ww)