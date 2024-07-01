H,W = gets.split("\s").map {|s|s.to_i}
h,w = gets.split("\s").map {|s|s.to_i}

ans = H*W - h*W - w*H + h*w
puts ans