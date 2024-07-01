a, b, c, k = gets.chomp.split("").to_i
if a >= k
  puts  k
elsif a < k && a + b > k
  puts a 
else
  puts a - ( k - a - b )
end


