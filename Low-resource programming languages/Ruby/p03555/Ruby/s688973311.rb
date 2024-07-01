c = Array.new(2)
c[0] = gets.chomp
c[1] = gets.chomp
if (c[0][0] == c[1][2]) && (c[0][1] == c[1][1]) && (c[0][2] == c[1][0])
  print 'YES'
else
  print 'NO'
end
