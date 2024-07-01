#!/usr/local/bin/ruby
while true
   i=gets.split
   
   h=i[0].to_i
   w=i[1].to_i
   
   h.times do
      w.times do
         printf("#")
      end
      printf("\n")
   end
   printf("\n")

   if w==0 && h==0
      break
   end
end