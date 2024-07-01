w, h, x, y, r = gets.chomp.split(' ').map{|x|x.to_i}

puts x.between?(r, w-r) && y.between?(r, h-r) ? :Yes : :No