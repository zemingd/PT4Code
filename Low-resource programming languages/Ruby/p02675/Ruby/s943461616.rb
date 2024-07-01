num = gets
num2 = num % 10

case num2
when 3 then
  puts 'bon'
when 0,1,6,8 then
  puts 'pon'
when 2,4,5,7,9
  puts 'hon'
end
