n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
a, b = m.times.map{gets.split.map(&:to_i)}.transpose

vw = Array.new(n+1, 1)
for i in 0..(m-1)
  if h[a[i]-1] == h[b[i]-1]
    vw[a[i]] = 0
    vw[b[i]] = 0
  elsif h[a[i]-1] > h[b[i]-1]
    vw[b[i]] = 0
  elsif h[a[i]-1] < h[b[i]-1]
    vw[a[i]] = 0
  end
end
cnt = 0
for i in 1..n
  cnt += vw[i]
end
puts cnt