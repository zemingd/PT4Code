number = gets.chomp[-1].to_i

if [3].include?(number)
  p 'bon'
elsif [0,1,6,8].include?(number)
  p 'pon'
else
  p 'hon'
end
