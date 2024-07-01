h, w = gets.chomp.split.map(&:to_i)
puts (h == 1 || w == 1)? "1" : (h * w + 1) / 2
