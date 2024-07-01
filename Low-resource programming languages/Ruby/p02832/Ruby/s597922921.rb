number = gets.to_i
line = gets.split.map(&:to_i)
counter = 1
for block in line do
    if block == counter 
      counter = counter+1
    end
end
if counter == 1
  puts -1
else
  puts number - (counter-1)
end    
