w_h, w_w = gets.split(' ').map(&:to_i)
b_h, b_w = gets.split(' ').map(&:to_i)

puts (w_h - b_h) * (w_w - b_w)
