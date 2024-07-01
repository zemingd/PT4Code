n = gets.chomp[-1].to_i
if ([2,4,5,7,9].include?(n))
  puts 'hon'
elsif([0,1,6,8].include?(n))
  puts 'pon'
else
  puts 'bon'
end