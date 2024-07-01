X = gets.chomp.to_i
#p b
a = 0
b = []
for i in 1..32
  if i <= X
   for p in 2..10 
       if i ** p <= X
         a = i ** p
       end
   end
   b.push(a)
 end
end
puts b.max
