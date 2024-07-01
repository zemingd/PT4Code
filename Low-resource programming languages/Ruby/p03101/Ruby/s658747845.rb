H,W = gets.split(" ").map{|i|i.to_i}
h,w = gets.split(" ").map{|i|i.to_i}

HW = H * W
r = HW - h*W
r -= (H - h) * w

puts r