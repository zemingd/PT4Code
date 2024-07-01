N = gets.chomp.to_i

to = Array.new(N) { [] }
cost = Array.new(N) { [] }


(N - 1).times do |i|
  u, v, w = gets.chomp.split.map(&:to_i)
  u -= 1
  v -= 1
  to[v].push(u)3
1 2 2
2 3 1
  to[u].push(v)

  cost[v].push(w)
  cost[u].push(w)N = gets.chomp.to_i

to = Array.new(N) { [] }
cost = Array.new(N) { [] }


(N - 1).times do |i|
  u, v, w = gets.chomp.split.map(&:to_i)
  u -= 1
  v -= 1
  to[v].push(u)3
1 2 2
2 3 1
  to[u].push(v)

  cost[v].push(w)
  cost[u].push(w)
end

p "to:", to
p "cost:", cost

ans = Array.new(N) {-1}
queue = []

ans[0] = 0
queue.push(0)

while !queue.empty?
  node = queue.shift
  to[node].each_with_index do |to_node, i|
    u = to_node
    w = cost[node][i]
    # 未訪問
    if ans[u] != -1
      next
    end
    ans[u] = (ans[node] + w) % 2
    queue.push(u)
  end
end

puts ans
end

p "to:", to
p "cost:", cost

ans = Array.new(N) {-1}
queue = []

ans[0] = 0
queue.push(0)

while !queue.empty?
  node = queue.shift
  to[node].each_with_index do |to_node, i|
    u = to_node
    w = cost[node][i]
    # 未訪問
    if ans[u] != -1
      next
    end
    ans[u] = (ans[node] + w) % 2
    queue.push(u)
  end
end

puts ans
