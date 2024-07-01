require 'numo/narray'

n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h.unshift()
g = Numo::Int32.zeros(n, n)
m.times do
  a, b = gets.split.map(&:to_i)
  g[a - 1, b - 1] = h[b - 1]
  g[b - 1, a - 1] = h[a - 1]
end
cnt = 0
g.to_a.each_with_index do |x, i|
  cnt += 1 if h[i] > x.max
end
puts cnt