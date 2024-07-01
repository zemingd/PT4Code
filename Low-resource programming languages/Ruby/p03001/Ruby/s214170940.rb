W,H,x,y=gets.split.map &:to_i
puts "#{W*H/2.0} #{x*2==W && y*2==H ? 1 : 0}"
