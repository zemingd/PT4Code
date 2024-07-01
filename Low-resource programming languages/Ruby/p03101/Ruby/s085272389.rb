H,W=gets.chomp.split(" ").map{|s| s.to_i}
h,w=gets.chomp.split(" ").map{|s| s.to_i}
puts H*W-H*w-W*h+w*h