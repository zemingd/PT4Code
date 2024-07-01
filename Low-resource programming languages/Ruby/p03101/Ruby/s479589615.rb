hh, ww = gets.split.map(&:to_i)
h, w = gets.split.map(&:to_i)
puts hh * ww - (h * ww + w * hh - h * w)
