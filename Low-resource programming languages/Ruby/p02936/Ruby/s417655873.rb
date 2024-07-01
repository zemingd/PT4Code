N, Q = gets.chomp.split.map(&:to_i)

$tree = Hash.new{ |h,k| h[k] = [] }
$tree = Array.new(N).map{Array.new}

(N-1).times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  # a < bなので片方だけ入れる
  $tree[a-1] << b-1
end


# クエリに順番は関係ない
# 1つの頂点に対してのものはまとめて良い
$query = Array.new(N, 0)

Q.times do |i|
  p, x = gets.chomp.split.map(&:to_i)
  $query[p-1] += x
end

$ans = Array.new(0)

def dfs(vertex, score)
  return if $tree[vertex].empty?

  $tree[vertex].each do |v|
    $ans[v] = score + $query[v]
    dfs(v, score + $query[v])
  end
end


$ans[0] = $query[0]
dfs(0, $query[0])

puts $ans.join(' ')



