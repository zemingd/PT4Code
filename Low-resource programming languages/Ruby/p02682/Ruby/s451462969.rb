a, b, c, k = gets.split.map(&:to_i)
total = 0
if a <= k
 total += a
 k -= a
else
 total += k
 puts total
 exit
end
if k == 0 || k <= b 
  puts total
  exit
else
  k -= b
end
if k == 0
  puts total
  exit
end
total -= k
puts total
