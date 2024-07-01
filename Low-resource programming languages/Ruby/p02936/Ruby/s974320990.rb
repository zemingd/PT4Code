n, q = gets.split.map(&:to_i)

tree = Array.new(n) { [] }
(n - 1).times do
  a, b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  tree[a] << b
end
cnt = Array.new(n, 0)
q.times do 
  pi, xi = gets.split.map(&:to_i)
  pi -= 1
  cnt[pi] += xi
end

que = []
que << [0, 0] # node_id, cnt
ans = []
while !que.empty?
  node, c = que.shift
  ans[node] = c + cnt[node]
  if !tree[node].empty?
    tree[node].each do |child_node|
      que << [child_node, c + cnt[node]]
    end
  end
end

puts ans * ' '