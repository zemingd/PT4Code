def r;gets.split.map &:to_i;end
def rr(n);n.times.map{yield r};end

N,Q = r
G = Array.new(N){[]}
CNT = Array.new(N,0)

rr(N-1) do |a,b|
  a-=1;b-=1
  G[a] << b
  G[b] << a
end

rr(Q) do |v,x|
  v-=1
  CNT[v] += x
end

visited = Array.new(N)
queue = [[0,0]] # idx,weight
while queue.size > 0
  i,w = queue.shift
  CNT[i] += w
  G[i].each do |j|
    next if visited[j]
    visited[j] = true
    queue << [j, CNT[i]]
  end
end

puts CNT.join(" ")