n,m,c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
for i in 0..n-1 do
  product = 0
  a = gets.split.map(&:to_i)
  for j in 0..m-1 do
    product += a[j] * b[j]
  end
  
  ans += 1 if product + c > 0
end
p ans