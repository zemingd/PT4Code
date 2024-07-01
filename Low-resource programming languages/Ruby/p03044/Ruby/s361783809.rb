N = gets.to_i
G = Array.new(N+1){Array.new}
(N-1).times do
  u, v, w = gets.split.map &:to_i
  G[u] << [u, v, w]
  G[v] << [v, u, w]
end

color = Array.new(N + 1)
q = [[1, 1, 0]]
until q.empty?
  from, to, weight = q.shift
  color[to] = weight
  G[to].each do |(f, t, w)|
    next if t == from
    next if color[t]
    q << [f, t, w + weight]
  end
end

1.upto(N) do |i|
  puts color[i].odd? ? 1 : 0
end
