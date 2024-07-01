def sums(num)
  return num*(num+1)/2
end

n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)

px = Array.new(n)
for i in 0..(n-1)
  px[i] = sums(p[i])*1.0/p[i]
end
pxs = Array.new(n+1)
pxs[0] = 0.0
for i in 0..(n-1)
  pxs[i+1] = px[i]+pxs[i]
end

ans = 0.0
for i in k..n
  val = pxs[i]-pxs[i-k]
  ans = [ans, val].max
end
puts ans