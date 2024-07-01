n = gets.chomp
a = 0
count = 0

while a < 10
 b = 0
 while b < 10
  c = 0
  while c < 10
   d = 0
   while d < 10
    if a + b + c + d == n.to_i
     count += 1
    end
    d += 1
   end
   c += 1
  end
  b += 1
 end
 a += 1
end

puts count