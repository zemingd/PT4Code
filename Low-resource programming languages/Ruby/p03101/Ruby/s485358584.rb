H, W = gets.split.map(&:to_i)
h, w = gets.split.map(&:to_i)
puts (H * W) - (H * h + W * w - w * h)