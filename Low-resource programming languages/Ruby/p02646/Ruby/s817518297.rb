lines = []
while line = gets
    lines << line.chomp.split(' ')
end
 v=lines[1][1].to_i-lines[0][1].to_i
 left=-v*lines[2][0].to_i
  right=lines[1][0].to_i-lines[0][0].to_i

if lines[0][0].to_i>lines[1][0].to_i
if left>=right
   print 'YES'
else
   print 'NO'
end
else
  if left<=right
   print 'YES'
else
   print 'NO'
end
end