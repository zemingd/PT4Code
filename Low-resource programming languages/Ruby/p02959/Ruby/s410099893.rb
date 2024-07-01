f = readlines
N = f[0].to_i
a = f[1].split(" ").map(&:to_i)
b = f[2].split(" ").map(&:to_i)
b.push(0)
i = N
ans = 0

while i > 0
  if a[i] > b[i]
    ans += b[i]
    a[i] -= b[i]
  else
    ans += a[i]
    a[i] = 0
  end
  m = a[i] - b[i-1]
  
  if m >= 0
    ans += b[i-1]
    b[i-1] = 0
  else 
    ans += a[i]
    b[i-1] -= a[i]
  end
  i -= 1
end

if a[i] > b[i]
  ans += b[i]
else
  ans += a[i]
end

puts ans
