H, W, h, w = $stdin.read.split.map(&:to_i)
puts H * W - (h * W + H * w - h * w)
