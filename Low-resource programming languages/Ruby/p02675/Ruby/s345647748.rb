n = gets.chop.split('').map(&:to_i)
x = n[-1]

if x == 3
  puts 'bon'
elsif x == 0 || x == 1 || x == 6 || x == 8
  puts 'pon'
else
  puts 'hon'
end
 