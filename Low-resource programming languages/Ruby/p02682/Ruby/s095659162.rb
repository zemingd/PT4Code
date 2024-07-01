a,b,c,k = gets.chomp.split(' ').map(&:to_i)
ans = 0
if k >= a
  ans += a
  k -= a
else
  ans += k
  k = 0
end

if k >= b
  k -= b
else
  k = 0
end

if k >= c
  ans -= c
else
  ans -= k
  k = 0
end

puts ans