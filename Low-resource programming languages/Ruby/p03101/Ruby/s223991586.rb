_h, _w = gets.chomp.split.map(&:to_i)
h, w = gets.chomp.split.map(&:to_i)
puts (_h - h) * (_w - w)