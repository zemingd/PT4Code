num = gets.to_i
num2 = num % 10

case num2
when "3" then
  puts 'bon'
when "0","1","6","8" then
  puts 'pon'
else
  puts 'hon'
end
