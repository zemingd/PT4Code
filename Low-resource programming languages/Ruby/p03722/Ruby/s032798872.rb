def dig(u, edges, visited, reachable)
  if visited[u]
    return reachable[u]
  end
  visited[u] = 1
  reachable[u] = edges.size == 0 ? false : edges[u].keys.any?{ |v| dig(v, edges, visited, reachable) }
end

N,M = gets.split.map &:to_i
edges = (0..N).map{ {} }
infty = 0
M.times{
  a,b,c = gets.split.map &:to_i
  edges[a][b] = -c
  infty += c.abs
}

reachable = Array.new(N+1,false)
reachable[N] = true
visited = { N => 1 }
dig(1, edges, visited, reachable)

usable_edges = edges.map{ |es|
  h = {} 
  es.each{ |v,c|
    h[v] = c if reachable[v]
  }
  h
}

vs = (0..N).map{ { distance: infty, predecessor: nil } }
vs[1][:distance] = 0
M.times{
  usable_edges.each_with_index{ |h,u|
    h.each{ |v,c|
      if vs[v][:distance] > vs[u][:distance] + c
        vs[v][:distance] = vs[u][:distance] + c
        vs[v][:predecessor] = u
      end
    }
  }
}

usable_edges.each_with_index{ |h,u|
  h.each{ |v,c|
    if vs[u][:distance] + c < vs[v][:distance]
      puts "inf"; exit
    end
  }
}

p -vs[N][:distance]

