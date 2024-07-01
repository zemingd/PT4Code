n = gets.to_i
a = gets.split.map(&:to_i)
h = Hash.new(0)
n.times do |i|
  h[a[i]] += 1
end
sum = 0
g = {}
f = {}
h.each do |k, v|
  sum += g[k] = v * (v - 1) / 2
  f[k] = (v - 1) * (v - 2) / 2
end
n.times do |i|
  puts sum - g[a[i]] + f[a[i]]
end