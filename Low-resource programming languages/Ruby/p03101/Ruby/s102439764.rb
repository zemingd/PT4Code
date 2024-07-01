h,w = gets.split(" ").map{|e| e.to_i}
sh,sw = gets.split(" ").map{|e| e.to_i}

puts (h-sh)*(w-sw)