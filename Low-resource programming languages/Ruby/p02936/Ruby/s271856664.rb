# https://atcoder.jp/contests/abc138/tasks/abc138_d
# 4 3
# 1 2
# 2 3
# 2 4
# 2 10
# 1 100
# 3 1
# 100 110 111 110
# N Q
# Ai Bi
# ...
# An Bn
# Pj Xj
# ..
# Pq X q
# p以下に値を加える
# 1が頂点

n, q = gets.chomp.split.map(&:to_i)
tree = Array.new(n, [])

(n - 1).times do
  a, b = gets.chomp.split.map { |v| v.to_i - 1 }
  tree[a] += [b]
  tree[b] += [a]
end
points = Array.new(n, 0)
q.times do
  p, x = gets.chomp.split.map(&:to_i)
  points[p - 1] += x
end
queue = [0]
al = {}
while curr = queue.shift
  next if al[curr]
  al[curr] = true
  queue.push(*tree[curr])
  tree[curr].each do |ch|
    next if al[ch]
    points[ch] += points[curr]
  end
end
puts points.join(' ')