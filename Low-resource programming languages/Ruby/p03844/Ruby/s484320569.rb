equation = gets.chomp.split(' ')
if equation[1] == "-"
  puts equation[0].to_i - equation[2].to_i
else
  puts equation[0].to_i + equation[2].to_i
end