a, b = gets.chomp.split.map(&:to_i)
 
result1 = a.to_s * b
result2 = b.to_s * a
 
if result1 < result2
  puts result1
else
  puts result2
end