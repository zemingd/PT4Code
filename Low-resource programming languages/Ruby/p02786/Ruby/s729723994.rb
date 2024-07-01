h = gets.to_i
sum = 0
i = 0
while h >= 1
 sum += i*2
 h = h/2
 i = i*2
 if sum == 0
   i = 1
 end
end

puts sum + 1