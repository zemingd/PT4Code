n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
ans = 0
for i in 0..n-1
  x -= a[i]
  ans += 1 if x >= 0
end
ans -= 1 if x > 0
puts ans