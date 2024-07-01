num = gets.chomp.to_s.last.to_i

if [2,4,5,7,9].include?(num)
  puts 'hon'
elsif num == 3
  puts 'bon'
else
  'pon'
end