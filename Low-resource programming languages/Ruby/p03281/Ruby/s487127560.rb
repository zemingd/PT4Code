n = gets.to_i
x = 0
for i in 1..n do
  if(i % 2 != 0)then
     c = 0
     for j in 1..i do
        if(i % j == 0)then
         c += 1;
         end
      end
          if(c == 8)then
            x += 1
            end
    end
end
puts x