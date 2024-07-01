X = gets.chomp.to_i
a = 0
b = []
for i in 1..100
  if (Math::log(i)).to_f <= (Math::log(X) / 2).to_f
   for p in 2..10 
       if (p * Math::log(i)).to_f <= (Math::log(X)).to_f
         a = i ** p
       end
     b.push(a)
   end
  end
end
puts b.max
