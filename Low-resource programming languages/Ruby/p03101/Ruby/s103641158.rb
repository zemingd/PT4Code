H,W = gets.chomp.split(" ").map(&:to_i)
h,w = gets.chomp.split(" ").map(&:to_i)

total = H * W - h * W - w * H + h * w
puts total
