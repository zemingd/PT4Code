n, q = gets.split.map(&:to_i)
used = Array.new(n,false)

g = Array.new(n+1){[]}
(n-1).times do
  a,b = gets.split.map{ |i| i.to_i}# 0-indexedに変更
  g[a].push(b)
  g[b].push(a)
end

points = Array.new(n+1,0)
q.times do |i|
  node,x = gets.split.map(&:to_i)
  points[node] += x
end

que = [1] # BFS, 木の根である頂点0から足す

while node = que.shift # 破壊的メソッド。空配列は変更が行わずnilを返す
  used[node] = true #
  g[node].each do |k|
    next if used[k]
    points[k] += points[node]
    que.push(k) unless used[k]
  end
end

puts points.drop(1).join(' ')
