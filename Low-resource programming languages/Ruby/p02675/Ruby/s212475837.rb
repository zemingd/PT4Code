n = gets.to_i % 10
if [2, 4, 5, 7, 9].include?(n)
  puts 'hon'
elsif [0, 1, 6, 8].include?(n)
  puts 'pon'
else
  puts 'bon'
end
