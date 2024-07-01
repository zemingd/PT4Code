n = gets.to_s.to_i
edges = Array.new(n-1){ gets.to_s.split.map{|t|t.to_i} }

g = Array.new(n+1){ [] }
edges.each do |u, v, c|
  g[u] << [v, c]
  g[v] << [u, c]
end

ans = Array.new(n+1){ -1 }
# used = Array.new(n+1){ false }

q = [1]
ans[1] = 0
# used[1] = true

while q.any?
  
  v = q.shift
  parent_color = ans[v]
  g[v].each do |(u, c)|
    next if ans[u] >= 0
    ans[u] = ( c.even? ? parent_color : 1 - parent_color )
    q.push u
  end
end

puts ans[1, n]