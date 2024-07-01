n = gets.to_i
x = 0
c = 0
for i in 1..n do
 if i %　2 != 0
  for j in 1..i do
    if i % j == 0
      c += 1;
    end
  end
   if c == 8
      x += 1
   end
 end
end
puts x