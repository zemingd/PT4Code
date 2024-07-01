require 'matrix'

n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h.unshift(1)
k = Matrix.zero(n + 1)
g = Matrix.zero(n + 1)
h.each_with_index do |x, i|
  k[i, i] = x
  g[i, 0] = x
end
m.times do
  a, b = gets.split.map(&:to_i)
  g[a, b] = 1
  g[b, a] = 1
end
cnt = 0
(g * k).row_vectors.to_a.each_with_index do |x, i|
  cnt += 1 if h[i] == x.max && x.count(h[i]) == 1
end
puts cnt - 1