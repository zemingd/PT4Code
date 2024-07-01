n = gets.to_i
n = n % 10
if n == 0 || n == 1 || n == 6 || n == 8
  print 'pon'
elsif n == 3
  print 'bon'
else
  print 'hon'
end