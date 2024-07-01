H, W = gets.split.map(&:to_i)
h, w = gets.split.map(&:to_i)

H_sub = H - h
W_sub = W - w

puts H_sub * W_sub