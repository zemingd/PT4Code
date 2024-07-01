# 5:48
n = gets.to_s.to_i
edges = Array.new(n-1){ gets.to_s.split.map{|t|t.to_i} }

g = Array.new(n+1){ [] }
edges.each do |u, v, c|
  g[u] << [v, c]
  g[v] << [u, c]
end

ans = Array.new(n+1){ 0 }
used = Array.new(n+1)

q = [1]
used[1] = true

[].each do |t|
  puts t
end


while q.any?
  
  v = q.shift
  g[v].each do |(u, c)|
    next if used[u]
    used[u] = true
    # p [v, u, c]
    ans[u] = 1 - ans[v] if c.odd?
    q.push u
  end
end

puts ans[1, n]