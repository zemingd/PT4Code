a, b = gets.chomp.split(' ')
sum = a.to_i + b.to_i
if sum %2 == 1 then
  print 'IMPOSSIBLE'
else
  print (a.to_i + b.to_i) / 2
end
