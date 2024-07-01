N = gets.to_i
uvw_list = (N - 1).times.map { gets.split.map(&:to_i) }.sort
w_table = {}
tree = {}
has_parent = {}
uvw_list.each do |(u, v, w)|
  tree[u] ||= []
  tree[v] ||= []
  if has_parent[v]
    tree[v].push([u, w])
    has_parent[u] = true
  else
    tree[u].push([v, w])
    has_parent[v] = true
  end
end

def dfs(tree, i, w_table)
  w = w_table[i]
  (tree[i] || []).each do |(v, w2)|
    w_table[v] = w + w2
    dfs(tree, v, w_table)
  end
end
w_table[1] = 0
dfs(tree, 1, w_table)
(1..N).each do |i|
  puts w_table[i] % 2
end
