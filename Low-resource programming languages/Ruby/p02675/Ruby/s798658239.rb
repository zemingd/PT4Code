input = gets.to_i
digit = input % 10

if (digit == 2 || digit == 4 || digit == 5 || digit == 7 || digit == 9)
  puts 'hon'
elsif (digit == 0 || digit == 1 || digit == 6 || digit == 8)
  puts 'pon'
else
  puts 'bon'
end
