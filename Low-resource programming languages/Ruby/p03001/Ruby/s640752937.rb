w, h, x, y = gets.chomp.split.map &:to_i
c = 0
c = 1 if((w/2.0) == x and (h/2.0) == y)
puts "#{w*h/2.0} #{c}"