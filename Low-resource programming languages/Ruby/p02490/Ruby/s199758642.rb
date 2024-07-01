v = []
loop do |i|
 (x, y) = gets.chomp.split(" ")
 x = x.to_i
 y = y.to_i
 if x == 0 && y == 0
  break
 end
 if x > y
 z = x
 x = y
 y = z
end
 print x, " ", y, "\n"
end