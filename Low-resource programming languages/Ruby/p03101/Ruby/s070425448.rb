H,W = gets.split(" ").map(&:to_i)
h,w = gets.split(" ").map(&:to_i)

x = H*W - H*h - W*w + h*w
puts x