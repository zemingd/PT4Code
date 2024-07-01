def gets_num
  gets.split("\s").map(&:to_i)
end

n, m = gets_num
h = gets_num
graph = Array.new(n + 1).map { Array.new(n + 1, 0) }
m.times do
  a, b = gets_num

  graph[a][b] = h[b - 1]
  graph[b][a] = h[a - 1]
end

sum = 0

1.upto(n) do |a|
  if a > graph[a].max
    sum += 1
  end
end

p sum