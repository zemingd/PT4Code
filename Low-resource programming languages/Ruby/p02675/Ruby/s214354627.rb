s=gets.chomp
if [2,4,5,7,9].include? s[-1]
  puts 'hon'
elsif [0,1,6,8].include? s[-1]
  puts 'pon'
else
  puts 'bon'
end