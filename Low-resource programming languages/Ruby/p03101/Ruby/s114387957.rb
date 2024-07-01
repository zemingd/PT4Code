H, W = gets.split.map(&:to_i)
h, w = gets.split.map(&:to_i)
puts H * W - (H * w + h * W - w * h)
