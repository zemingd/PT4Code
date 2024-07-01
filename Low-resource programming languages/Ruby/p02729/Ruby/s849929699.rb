a, b = gets.split.map(&:to_i)
ans = 0

if a<=1
  ans += 0
else
  ans += a*(a-1)/2
end

if b<=1
  ans += 0
else
  ans += b*(b-1)/2
end

puts ans