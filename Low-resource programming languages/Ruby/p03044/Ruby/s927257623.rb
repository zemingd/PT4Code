N = gets.chop.to_i

# 同じ色に塗られた任意の頂点について、その距離が偶数である → ある１点を基準にして、そこから距離が偶数のものは0奇数のものは1とすれば良い

# ハッシュの中にもハッシュをつくる
graph = Hash.new{ |h,k| h[k] = {}}

edges = (N-1).times.map{ gets.split.map(&:to_i)}

# 無向グラフなので from, toはどちらも用意する
edges.each do |from, to, len|

  len = len % 2
  graph[from][to] = len
  graph[to][from] = len
end


# queueの要素は頂点とその長さとする
# 初期値は1で長さは0
queue = [[1,0]]

visited = {}
ans = Array.new(N)


# queueがemptyでないときにループする
until queue.empty?
  # 頂点と距離を持ってくる
  v, dist = queue.shift

  ans[v-1] = dist % 2 == 0 ? 0 : 1

  next if visited[v]
  visited[v] = true

  graph[v].each do |n, len|
    queue << [n, (dist+len) % 2]
  end
end

puts ans






