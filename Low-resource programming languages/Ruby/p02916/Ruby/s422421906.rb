n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
ans = 0
for i in 0..n-1
  ans += b[a[i]-1]
  ans += c[a[i-1]-1] if (i != 0 && a[i]-a[i-1]==1)
end
puts ans
