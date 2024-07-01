h, w = gets.chomp.split.map(&:to_i)
hh, ww = gets.chomp.split.map(&:to_i)
puts h * w - (hh * w) - (ww * h) + (hh * ww)

