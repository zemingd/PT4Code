n = gets.chomp.to_i
uvw = []
(n - 1).times do
  uvw.push gets.split.map(&:to_i)
end
d = []
d[1] = 0
h = Array.new(n + 1) { [] }
uvw.each do |e|
  u = e[0]
  v = e[1]
  w = e[2]
  h[u].push [v, w]
  h[v].push [u, w]
end
color = []
color[1] = 0
stack = []
stack.push [1, 0]
uv = [1, 0]
until stack.empty? && uv != [1, 0]
  while uv.last >= h[uv.first].size
    uv = stack.pop
  end
  u = uv.first
  i = uv.last
  e = h[u][i]
  v = e.first
  if d[v]
    i += 1
    uv = [u, i]
    next
  end
  d[v] = d[u] + e.last
  color[v] = d[v].even? ? 0 : 1
  stack.push [u, i + 1]
  uv = [v, 0]
end
puts color[1..n]
