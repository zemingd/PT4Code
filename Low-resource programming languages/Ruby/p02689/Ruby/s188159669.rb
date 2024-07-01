n, m = gets.split.map(&:to_i)
hills = gets.split.map(&:to_i)
edges = []
m.times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
edges.each do |from, to|
  graph[from] << to
  graph[to] << from
end
ans = 0
1.upto(n) do |i|
  height = hills[i - 1]
  max = 0
  graph[i].each do |to|
    max = hills[to - 1] if max < hills[to - 1]
  end
  ans += 1 if height > max
end
puts ans
