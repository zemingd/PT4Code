h, w = gets.split.map(&:to_i)
hh, ww = gets.split.map(&:to_i)
puts h * w - hh * w - h * ww + hh * ww
