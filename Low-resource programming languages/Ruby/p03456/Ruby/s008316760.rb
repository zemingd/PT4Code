input = gets.split.join.to_i
output = Math.sqrt(input).to_i
if output ** 2 == input
  puts 'yes'
else
  puts 'No'
end