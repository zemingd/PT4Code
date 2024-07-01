n, m = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)
adj = n.times.map{Array.new}
m.times do
  a, b = gets.split.map{|s| s.to_i - 1}
  adj[a].push b
  adj[b].push a
end

count = 0
n.times do |i|
  height = heights[i]
  higher = adj[i].select{|j| heights[j] >= height}
  count += 1 if higher.empty?
end

puts count
