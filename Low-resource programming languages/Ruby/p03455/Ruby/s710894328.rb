line = gets.split(' ')
line = line.to_i
 
if (line[0] * line[1]) % 2 == 0
  puts 'Even'
else
  puts 'Odd'
end