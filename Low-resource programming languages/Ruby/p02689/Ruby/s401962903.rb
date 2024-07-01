n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
g = Array.new(n, 0)
m.times do
  a, b = gets.split.map(&:to_i)
  g[a - 1] = h[b - 1] if g[a - 1] < h[b - 1]
  g[b - 1] = h[a - 1] if g[b - 1] < h[a - 1]
end
cnt = 0
n.times do |i|
  cnt += 1 if h[i] > g[i]
end
puts cnt