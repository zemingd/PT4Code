$n, $q = gets.chomp.split(' ').map(&:to_i)
tree = Array.new($n) { [] }
result = Array.new($n, 0)

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

visited = Hash.new(false)
queue = [0]
while queue.count > 0 do
  i = queue.shift
  visited[i] = true
  tree[i].each do |next_child|
    next if visited[next_child]
    result[next_child] += result[i]
    visited[next_child] = true
    queue.push(next_child)
  end
end
print result.join(' ')
