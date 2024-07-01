n = gets.to_i
d = gets.split.map(&:to_i)
h = Array.new(n, 0)
max_d = 0
for i in 0...n do
  h[d[i]] += 1
  max_d = d[i] if max_d < d[i]
end
count = 1
for i in 1..max_d do
  count = count * (h[i - 1] ** h[i]) % 998244353
end
puts count
