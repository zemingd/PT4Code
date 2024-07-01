h, w = gets.split.map(&:to_i)
puts (h == 1) || (w == 1) ? 1 : (w * 1/2r).ceil