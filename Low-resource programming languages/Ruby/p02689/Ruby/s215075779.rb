n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
r = Array.new(n, 1)
m.times do
  a, b = gets.split.map(&:to_i)
  r[a - 1] = 0 if h[a - 1] <= h[b - 1]
  r[b - 1] = 0 if h[a - 1] >= h[b - 1]
end
puts r.inject(:+)
