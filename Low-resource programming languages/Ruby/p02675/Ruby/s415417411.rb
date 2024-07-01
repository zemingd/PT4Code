num = gets.chomp!
if num == 3
  p 'bon'
elsif [0, 1, 6, 8].include?(num[-1].to_i)
  p 'pon'
else
  p 'hon'
end
