a, b, c, k = gets.split.map(&:to_i)
ans = -10000000
if k <= a
  ans = k
elsif (k - a) <= b
  ans = a
else
  ans = a - (k - a - b)
end

puts ans