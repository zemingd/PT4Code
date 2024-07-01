n = gets.to_i
g = Array.new(n+1){Array.new}
(n-1).times do |i|
  u,v,w = gets.chomp.split(" ").map(&:to_i)
  g[u].push([v,w])
  g[v].push([u,w])
end
dist = Array.new(g.length,-1)
dist[1] = 0
queue = [1]
while !queue.empty?
  v = queue[0]
  queue.shift
  g[v].each{|des|
    if dist[des[0]] == -1
      dist[des[0]] = des[1]%2 ^ dist[v]
      queue.push(des[0])
    end
  }
end
n.times do |i|
 puts dist[i+1]
end