H, W = gets.split.map(&:to_i)
h, w = gets.split.map(&:to_i)
total = H*W
marked = h*W + H*w
puts total - (marked-h*w)
