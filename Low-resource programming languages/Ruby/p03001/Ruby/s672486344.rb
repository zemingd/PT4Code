W,H,x,y=gets.split.map &:to_i
puts "#{W*H/2.0} #{x==W/2 && y==H/2 ? 1 : 0}"