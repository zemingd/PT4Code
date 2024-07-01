num = gets.to_i % 10
if num == 3
  print 'bon'
elsif [0, 1, 6, 8].include?(num)
  print 'pon'
else
  print 'hon'
end
