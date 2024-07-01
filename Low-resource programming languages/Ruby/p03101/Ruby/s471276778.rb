H,W = gets.strip.split.map(&:to_i)
h,w = gets.strip.split.map(&:to_i)
puts H*W-h*W-w*H+w*h