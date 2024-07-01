not_goods = []
neighbours = Array.new(10001, Array.new())
heights = [-1]
n, m = gets.split.map(&:to_i)

n.times { heights << gets.to_i }

m.times do
  l, r = gets.split.map(&:to_i)
  neighbours[l] << r
  neighbours[r] << l
end

res = 0
1.upto(n) do |i|
  current = heights[i]
  res += 1 if current > neighbours[i].max
end

puts res