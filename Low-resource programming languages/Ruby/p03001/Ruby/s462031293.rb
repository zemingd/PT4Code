W,H,X,Y=gets.split.map &:to_f
puts "#{W*H/2.0} #{(X==W/2.0 and Y==H/2.0 ? 1 : 0)}"