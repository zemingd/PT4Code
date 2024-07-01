a, b, c, k = gets.chomp.split.map(&:to_i)
if a >= k
  puts a
elsif a < k && k < a + b
  puts a
else
  puts a - (k - a - b)
end
