a,b,c = gets.chomp.split(' ')
if a[-1] == b[0] && b[-1] == c[0]
  print 'YES'
else
  print 'NO'
end