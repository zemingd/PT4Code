#!/usr/bin/ruby
#encoding: utf-8

n,q = gets.split.map(&:to_i)
$ans = Array.new(n,0)

# 隣接リストで木を表現する。
$to = Array.new(n){ [] }

(n-1).times do |i|
  a,b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  $to[a].push(b)
  $to[b].push(a)
end

# 累積和を取るためのdfs
def dfs(v,p=-1)
  $to[v].each do |u|
    if u == p 
      next
    end
    $ans[u] += $ans[v]
    dfs(u,v)
  end
end

q.times do |i|
  p,x = gets.split.map(&:to_i)
  p -= 1
  $ans[p] += x
end

# dfsで累積和を取る。
#dfs(0)

# 累積和を取る(スタックによるdfs)
visited = Array.new(n,false) #訪れたか否か、bool値で持つ
# 探査候補スタック
queue = [0]

until queue.empty?
  c = queue.shift
  visited[c] = true
  $to[c].each do |u|
    next if visited[u]
    $ans[u] += $ans[c]

    # 未探索かつ候補にも入っていない地点なので、探索候補スタックに追加する。
    queue << u
  end
end

(0..n-1).each do |i|
  puts $ans[i]
end
