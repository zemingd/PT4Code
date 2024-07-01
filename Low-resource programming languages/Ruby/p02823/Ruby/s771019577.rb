n, a, b = gets.split(" ");
n = n.to_i;
a = a.to_i;
b = b.to_i;

sa = a - b
count = 0

while a != b do
   
   if sa % 2 == 0
      # aとｂの距離が偶数の処理
      a += 1
      b -= 1
      count += 1
   else
      # aとｂの距離が奇数の処理
      if (a == 1 || b == n)
         a += 1
         n -= 1
         count += 1
      elsif (a ==n || b == 1)
         a -= 1
         b += 1
         count += 1
      else
         if (a - 1 < 5 - b)
            a -= 1
            b -= 1
            count += 1
         else
            a += 1
            b += 1
            count += 1
         end
      end
   end
end

puts  count
