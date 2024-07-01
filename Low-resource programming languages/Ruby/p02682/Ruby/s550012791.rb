a, b, c, k = gets.split.map(&:to_i)
if a >= k
  puts a
elsif a + b >= k
  puts a
else
  ans = a
  minus = k - a - b
  ans -= minus
  puts ans
end
