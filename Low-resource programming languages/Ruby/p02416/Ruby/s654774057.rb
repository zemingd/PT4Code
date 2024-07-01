while true do

   x = gets.chomp
   break if x == '0'

   i = 0
   for c in x.chars
     i += c.to_i
   end
   puts i
 end
 