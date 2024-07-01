numbers = gets.split("")
if numbers[1] != numbers[2]
  puts 'No'
elsif numbers[0] == numbers[1] || numbers[3] == numbers[1]
  puts 'Yes'
else
  puts 'No'
end
