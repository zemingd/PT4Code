   line = readlines.map(&:to_i)  
   if line[0] == 1 && line[1] == 2
   print 3
   end
   if line[0] == 1 && line[1] == 3
   print 2
   end
   if line[0] == 2 && line[1] == 3
   print 1
   end