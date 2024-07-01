N = gets.strip.to_i
TREE = readlines.map {|line| line.split(' ').map(&:to_i)}

graph = Array.new(N+1){ [] }
TREE.each do |data|
  graph[data[0]] << [data[0], data[1], data[2]]
  graph[data[1]] << [data[1], data[0], data[2]]
end

color = Array.new(N+1)
q = [[1, 1, 0]]
until q.empty?
  from, to, weight = q.shift
  color[to] = weight
  graph[to].each do |(f, t, w)|
    next if t == from
    next if color[t]
    q << [f, t, w + weight]
  end
end

color[1..N].each do |weight|
  puts weight.odd? ? 1 : 0
end
