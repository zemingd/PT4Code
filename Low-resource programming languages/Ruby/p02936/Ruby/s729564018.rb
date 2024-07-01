n,q=gets.split.map(&:to_i)
ab=(n-1).times.map{gets.split.map(&:to_i)}
px=q.times.map{gets.split.map(&:to_i)}

g=Array.new(n).map{Array.new()}
(n-1).times do |i|
  g[ab[i][0]-1].push(ab[i][1])
end
count=Array.new(n, 0)


def dfs(g, seen, count, v, x)
  seen[v-1]=true
  count[v-1]+=x

  g[v-1].length.times do |i|
    next_v=g[v-1][i]
    next if seen[next_v-1]
    dfs(g, seen, count, next_v, x)
  end

end

q.times do |i|
  seen=Array.new(n,false)
  dfs(g, seen, count, px[i][0], px[i][1])
end

puts count.join(" ")
