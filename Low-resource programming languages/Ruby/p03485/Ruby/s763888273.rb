line = gets.split(" ")
sum = line[0].to_i + line[1].to_i
if sum % 2 == 0
  puts sum/2
else
  puts sum/2 + 1
end