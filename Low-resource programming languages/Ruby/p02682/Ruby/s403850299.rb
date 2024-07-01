a, b, c, k = gets.split.map(&:to_i)
total = 0
if k > a
 total += a
 k -= a
else
 puts total += k
 exit
end
if k == 0 || k < b 
  puts total
  exit
else
  k -= b
end
if b == 0
  puts total
  exit
end
total -= k
puts total
