H,W = gets.split.map(&:to_i)
h,w = gets.split.map(&:to_i)
p H*W - (H*w + W*h -h*w)