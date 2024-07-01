n,m = gets.split.map(&:to_i)
ar = []
ans = 0
for i in 0..n-1 do
  a = gets.split.map(&:to_i)
  b = a[0]
  for j in 1..b do
    
  ar << a[j]
  end
end
for k in 1..30 do
  c = ar.count(k)
  ans += 1  if c == n
end
p ans