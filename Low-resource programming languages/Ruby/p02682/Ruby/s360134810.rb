a,b,c,k = gets.split.map(&:to_i)
ans = 0

if a+b >= k
  ans = k
elsif a+b >= k
  ans = a
else
  diff = k-(a+b)
  ans = a - diff
end

puts ans