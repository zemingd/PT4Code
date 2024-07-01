while true
 x,y = gets.split(' ').collect(|n|n.to_i)
 if x == 0 && y == 0
  break
 end
 if x<=y then puts "#{x} #{y}"
 else puts "#{y} #{x}"
 end
end