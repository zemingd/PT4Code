input = gets.strip
if((input[0] == input[1]) || (input[1] == input[2]) || (input[2] == input[3]) || (input[3] == input[0]))
  puts "Bad"
else
  puts "Good"
end