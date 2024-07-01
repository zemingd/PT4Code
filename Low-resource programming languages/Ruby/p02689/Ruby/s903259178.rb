n, m = gets.split.map(&:to_i)
heights = [0] + gets.split.map(&:to_i)

f = Array.new(n + 1, 1)
f[0] = 0

m.times do
  a, b = gets.split.map(&:to_i)
  f[a] = 0 if heights[a] <= heights[b]
  f[b] = 0 if heights[b] <= heights[a]
end

puts f.sum