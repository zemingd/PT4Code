height,width = gets.chomp.split(" ").map{|x| x.to_i}
print "#{height*width} #{2*(height+width)}\n"
