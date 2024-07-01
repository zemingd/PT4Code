n = gets.to_io
max = 0
for i in 1..n
   for j in 2..n
   　x = i ** j
      if x <= n
          max = x
      else
         break
     end
   end
end
puts max