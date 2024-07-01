n = gets.chomp
a = n[-1]

if ['2', '4', '5', '7', '9'].include?(a)
  puts 'hon'
elsif ['0', '1', '6', '8'].include?(a)
  puts 'pon'
else
  puts 'bon'
end