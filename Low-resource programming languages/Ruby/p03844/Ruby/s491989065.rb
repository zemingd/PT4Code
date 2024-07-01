input = gets.chomp.split(' ')
if input[1] == '+'
  puts input[0].to_i + input[2].to_i
else
  puts input[0].to_i - input[2].to_i
end
