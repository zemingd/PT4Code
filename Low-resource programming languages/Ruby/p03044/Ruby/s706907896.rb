N = gets.to_i

vs = []
(N+1).times {
  vs << []
}

(N-1).times {
  u,v,w = gets.split.map {|x| x.to_i}
  #puts "#{u} #{v} #{w}"
  vs[u] << [v,w]
  vs[v] << [u,w]
}

i = 0
while vs[i].size != 1
  i += 1
end

# BFS
vis = Array.new(N+1, -1)

que = [i]
vis[i] = 0
while (que.size() > 0)
  j = que.pop
  #puts j
  vs[j].each { |s|
    k = s[0]
    if vis[k] < 0
      vis[k] = vis[j] + s[1]
      que.push(k)
    end
  }
end


N.times { |i|
  puts vis[i+1] % 2
}
