n = gets.to_i
t = n % 10
case t
when 3
  puts 'bon'
when 2, 4, 5, 7, 9
  puts 'hon'
else
  puts 'pon'
end
