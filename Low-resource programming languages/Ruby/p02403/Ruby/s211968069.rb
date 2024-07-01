i = 0
j = 0

while true 
 H,W = gets.split(" ").map(&:to_i)
if (H == 0 && W ==0)
break
end

while i < H
  i  = i+1
  while j <W
    j = j +1
   puts "#"
end
end

puts "?\n"
end