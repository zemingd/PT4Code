N,M = gets.split.map(&:to_i)
res = {}
$inf = 0
M.times {
  a,b,c = gets.split.map(&:to_i)
  res[b-1] ||= {}
  res[b-1][a-1] = -c
  $inf += c.abs*2
}

# bfs reachable vertice from N
$reachable = {}
$reachable[N-1] = 1
fs = {}
fs[N-1] = 1
while true
  nfs = {}
  fs.keys.each{ |f,_|
    rs = res[f]
    next unless rs
    rs.each{ |t,_|
	  next if $reachable[t]
      $reachable[t] = 1
      nfs[t] = 1
    }
  }
  break if nfs.size == 0
  #p nfs.keys
  fs = nfs
end
#p $reachable

es = {}
res.each{ |t,h|
  next unless $reachable[t]
  h.each{ |f,c|
    next unless $reachable[f]
    es[f] ||= {}
    es[f][t] = c
  }
}

def bf(start, nodes, edges)
  froms = nodes.map{ nil }
  ds = (0..1).map{ nodes.map{ $inf } }
  ds[1][start] = ds[0][start] = 0
  (nodes.size-1).times{ |i|
	#p ds
    edges.each{ |u,es|
      es.each{ |v,c|
        next if ds[i&1^1][v] <= ds[i&1][u] + c
        ds[i&1^1][v] = ds[i&1][u] + c
        froms[v] = u
      }
    }
  }
  
  dds = ds[nodes.size&1^1]
  #p dds
  return nil if edges.any?{ |u,es| 
    es.any?{ |v,c|
      #puts "#{dds[u]} + #{c} <? #{dds[v]}"
      dds[u] + c < dds[v]
    }
  }
  
  dds
end

if ds = bf(0, (0...N).to_a, es)
  puts -ds[-1]
else
  puts "inf"
end