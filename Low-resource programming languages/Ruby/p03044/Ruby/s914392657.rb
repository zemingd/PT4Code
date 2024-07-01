# 5:48
n = gets.to_s.to_i
edges = Array.new(n-1){ gets.to_s.split.map{|t|t.to_i} }

g = Array.new(n+1){ [] }
edges.each do |u, v, c|
  g[u] << [v, c]
  g[v] << [u, c]
end

ans = Array.new(n+1){ 0 }
used = Array.new(n+1){ false }

q = [[1, 0]]
used[1] = true

while q.any?
  
  v, d = q.shift
  g[v].each do |(u, c)|
    next if used[u]
    used[u] = true
    # p [d, v, u, c]
    d_n = d + c
    ans[u] = ( d_n.odd? ? 1 - ans[v] : ans[v] )
    q.push [u, d_n]
  end
end

puts ans[1, n]