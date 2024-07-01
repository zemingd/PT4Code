lines = []
while line = gets
    lines << line.chomp.split(' ')
end
 lines
 v=lines[1][1].to_i-lines[0][1].to_i
 left=-v*lines[2][0].to_i

 right=lines[1][0].to_i-lines[0][0].to_i
 if left>=right
   print 'YES'
 else
   print 'NO'
 end