H, W = gets.chomp.split(' ').map(&:to_i)
h, w = gets.chomp.split(' ').map(&:to_i)
ans = (H * W) - (h * W + w * H - h * w)
puts ans
