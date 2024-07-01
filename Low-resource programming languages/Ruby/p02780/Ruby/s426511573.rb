n,k = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
v = x[0..k-1]
t = max = v.sum
(1..n-k).each do |i|
  t = t - x[i-1] + x[i+k-1]
  if max < t
    max = t
    v = x[i..i+k-1]
  end
end
e = 0
h = {}
v.each do |y|
  if h.has_key?(y)
    e += h[y]
  else
    m = (y*(y+1)/2.0)*(1.0/y)
    e += m
    h[y] = m
  end
end
puts e