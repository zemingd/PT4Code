N = gets.to_i
uvw_list = (N - 1).times.map { gets.split.map(&:to_i) }
g = {}
uvw_list.each do |(u, v, w)|
  u -= 1
  v -= 1
  g[u] ||= []
  g[u].push([v, w])
  g[v] ||= []
  g[v].push([u, w])
end

def bfs(g, v, w_table)
  w_table[v] = 0
  queue = []
  queue.push([v, -1])
  while !queue.empty?
    v, parent = queue.shift
    w = w_table[v]
    g[v].each do |(v2, w2)|
      next if v2 == parent
      w_table[v2] = w + w2
      queue.push([v2, v])
    end
  end
end
w_table = {}
bfs(g, 0, w_table)
N.times do |i|
  puts w_table[i] % 2
end
