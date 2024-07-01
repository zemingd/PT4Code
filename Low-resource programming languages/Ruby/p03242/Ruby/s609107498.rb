n = gets.chomp.split("")
for num in 0..2 do
 if n[num] == "1"
   n[num] = 9
 else
   n[num] = 1
 end
end
puts n.join("")