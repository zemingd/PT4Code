io = STDIN
n=io.gets.to_i
if [2,4,5,7,9].include? n%10
  puts 'hon'
elsif [0,1,6,8].include? n%10
  puts 'pon'
else
  puts 'bon'
end
