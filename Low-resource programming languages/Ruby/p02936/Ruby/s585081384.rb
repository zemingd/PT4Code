n,q=gets.split.map(&:to_i)
ab=(n-1).times.map{gets.split.map(&:to_i)}
px=q.times.map{gets.split.map(&:to_i)}

g=Array.new(n).map{Array.new()}
(n-1).times do |i|
  g[ab[i][0]-1].push(ab[i][1])
end
h=Array.new(n, 0)
q.times do |i|
  h[px[i][0]-1]+=px[i][1]
end
count=Array.new(n, 0)

def dfs(g, h, seen, count, v)
  seen[v]=true
  count[v]+=h[v]

  g[v].length.times do |i|
    next_v=g[v][i]-1
    next if seen[next_v]
    h[next_v]+=h[v]
    dfs(g, h, seen, count, next_v)
  end

end

seen=Array.new(n,false)
n.times do |i|
  next if seen[i]
  dfs(g, h, seen, count, i)
end

puts count.join(" ")
