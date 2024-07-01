x,y = gets.chomp.split(" ").map { |e| e.to_i }

p [y-x,y+x+1,-y-x+1,-y+x+2].select { |e| e > 0 } .min
