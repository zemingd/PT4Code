N, Q = gets.chomp.split.map(&:to_i)

$tree = Array.new(N).map{Array.new}

(N-1).times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  # a < bなので片方だけ入れる
  $tree[a-1] << b-1
  $tree[b-1] << a-1
end

$visited = Hash.new(false)


# クエリに順番は関係ない→関係あるっぽい・・・
# 1つの頂点に対してのものはまとめて良い
$query = Array.new(N, 0)

Q.times do |i|
  p, x = gets.chomp.split.map(&:to_i)
  $query[p-1] += x
end

$ans = Array.new(N, 0)


N.times do |i|
  $ans[i] = $query[i]
end

def dfs(vertex)
  return if $tree[vertex].empty?

  $tree[vertex].each do |v|
    next if $visited[v] == true
    $ans[v] = $ans[v] + $ans[vertex]
    $visited[v] = true
    dfs(v)
  end
end

$visited[0] = true
dfs(0)

puts $ans.join(' ')
