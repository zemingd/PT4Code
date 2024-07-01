a1, a2, a3 = gets.split(' ').map(&:to_i)

ans = a1 + a2 + a3
if ans >= 22 
  print 'bust
else
  print 'win
end