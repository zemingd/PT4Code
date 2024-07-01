h, w = gets.split(' ').map(&:to_i)
masu = 0.5 * ( w * h - h % 2)
puts(masu.round)