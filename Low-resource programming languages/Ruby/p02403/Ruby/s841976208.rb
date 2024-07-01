
while true
 H,W = gets.split(" ").map(&:to_i)
break if (H == 0 && W ==0)

H.times {puts "#"*W}
puts " "

end