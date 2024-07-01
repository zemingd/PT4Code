w,h,x,y = gets.chomp.split(" ").map(&:to_i)
iscenter = ([x,y] == [w/2,h/2]) && (w%2 == 0 && h%2 == 0)
puts "#{w*h/2.0} 1" if iscenter
puts "#{w*h/2.0} 0" if !iscenter