(h, w) = gets.chomp.split(' ').map(&:to_i)
(y, x) = gets.chomp.split(' ').map(&:to_i)
puts ((h - y) * (w - x)).to_s