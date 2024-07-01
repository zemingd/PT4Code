a, b, c, k = gets.to_s.split.map(&:to_i)

if a + b >= k
  puts a
else
  puts a - (k - (a + b))  
end