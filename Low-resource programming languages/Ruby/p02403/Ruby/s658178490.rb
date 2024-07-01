
while true
 H,W = gets.split(" ").map(&:to_i)
break if (H == 0 && W ==0)
end
 
for i in 0..H
 for j in 0..W
print "#"
end
puts " "
end
end