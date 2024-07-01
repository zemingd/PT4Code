h, w = gets.split(' ').map(&:to_i)
puts((0.5 * ( w *h - h % 2)).round)