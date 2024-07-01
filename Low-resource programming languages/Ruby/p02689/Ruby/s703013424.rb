n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
good = Array.new(n, true)
m.times do
  a, b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  good[a] = false if h[a] <= h[b]
  good[b] = false if h[a] >= h[b]
end
puts good.count(true)
