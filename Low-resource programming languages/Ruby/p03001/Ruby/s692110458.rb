w, h, x, y = gets.chomp.split.map &:to_i
c = 0
c += 1 if(w/2.0 == w/2 and h/2.0 == h/2)
puts "#{w*h/2} #{c}"