
while true
 h,w = gets.split(" ").map(&:to_i)
break if (H == 0 && W ==0)

h.times {puts "#"*w}
puts " "

end