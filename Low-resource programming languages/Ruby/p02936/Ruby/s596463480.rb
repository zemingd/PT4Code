$n, $q = gets.chomp.split(' ').map(&:to_i)
tree = Array.new($n) { [] }
result = Array.new($n, 0)

def dfs(v, p=-1)
  tree[v].each do |u|
    next if u == p
    result[u] += result[v]
    dfs(u, v)
  end
end

# データ準備
($n - 1).times do
  a, b = gets.chomp.split(' ').map(&:to_i)
  tree[a - 1].push(b - 1)
  tree[b - 1].push(a - 1)
end

# データ準備
$q.times do
  x, p = gets.chomp.split(' ').map(&:to_i)
  result[x - 1] += p
end

dfs(0)
print result.join(' ')