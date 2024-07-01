

while true 
 H,W = gets.split(" ").map(&:to_i)
if (H == 0 && W ==0)
  puts " "
break
end

for i in 1..H
  for j in 1..W
    puts "#"
end
end

end