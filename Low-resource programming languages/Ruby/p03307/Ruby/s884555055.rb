a = gets.to_i
for i in a..1999999998
 if i % 2 == 0 && i % a == 0
   puts i
   break
 end
end
