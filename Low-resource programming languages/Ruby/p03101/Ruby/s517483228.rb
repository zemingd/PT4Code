H,W = gets.chomp.split(" ").map(&:to_i)
h,w = gets.chomp.split(" ").map(&:to_i)

puts ans = H * W - ((h * W + w * H) - h * w)