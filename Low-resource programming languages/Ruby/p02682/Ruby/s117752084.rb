a, b, c, k = gets.split.map(&:to_i)
ans = -10000000
if k <= a
  ans = a
elsif (k-a) <= b
  ans = a
else
  ans = a + b - c
end

puts ans