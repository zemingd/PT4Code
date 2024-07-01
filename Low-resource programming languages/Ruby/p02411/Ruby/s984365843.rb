x = gets()
y = x.split()
m = y[0].to_i
n = y[1].to_i
k = y[2].to_i

p = m + n

until p == -2 && k == -1
 if m == -1 || n == -1
  puts "F"
 elsif 80 <= p
  puts "A"
 elsif 65 <= p && p < 80
  puts "B"
 elsif 50 <= p && p < 65
  puts "C"
 elsif 30 <= p && p < 50
  if 50 <= k
   puts "C"
  else
   puts "D"
  end
 elsif p < 30
  puts "F"
 end

 x = gets()
 y = x.split()
 m = y[0].to_i
 n = y[1].to_i
 k = y[2].to_i

 p = m + n
end
