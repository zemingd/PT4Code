h = 1
w = 1
while h > 0 && w > 0
h,w = gets.split.map(&:to_i)

a = 0

 while a<h
   b = 0
   while b<w
     print "#"
     b += 1
     if b == w

       break
     end
   end
   a += 1
   print "\n"
 end
 if h == 0 && w == 0
   break
 else
   puts ""
 end

end