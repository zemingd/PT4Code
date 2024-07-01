H, W = gets.chomp.split(" ").map(&:to_i)
h, w = gets.chomp.split(" ").map(&:to_i)
puts H * W - (h * W + w * H - h * w)
