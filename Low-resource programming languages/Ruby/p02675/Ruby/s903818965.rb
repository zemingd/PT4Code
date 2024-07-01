num = gets.to_i % 10
if num == 3
  puts 'bon'
elsif [0, 1, 6, 8].include?(num)
  puts 'pon'
else
  puts 'hon'
end
