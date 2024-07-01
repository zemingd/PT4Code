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

def dfs(g, v, parent, w_table)
  w = w_table[v]
  (g[v] || []).each do |(v2, w2)|
    next if v2 == parent
    w_table[v2] = w + w2
    dfs(g, v2, v, w_table)
  end
end
w_table = Hash.new { 0 }
w_table[0] = 0
dfs(g, 0, nil, w_table)
N.times do |i|
  puts w_table[i] % 2
end
