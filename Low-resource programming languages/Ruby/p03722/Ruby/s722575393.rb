N,M = gets.split.map(&:to_i)
es = {}
$inf = 0
M.times {
  a,b,c = gets.split.map(&:to_i)
  es[(a-1)*N+b-1] = -c
  $inf += c.abs*2
}

def bf(start, nodes, edges)
  froms = nodes.map{ nil }
  ds = (0..1).map{ nodes.map{ $inf } }
  ds[1][start] = ds[0][start] = 0
  (nodes.size-1).times{ |i|
	#p ds
    edges.each{ |uv,c|
      u = uv/N; v = uv%N
   	  next if ds[i&1^1][v] <= ds[i&1][u] + c
      ds[i&1^1][v] = ds[i&1][u] + c
      froms[v] = u
    }
  }
  
  dds = ds[nodes.size&1^1]
  #p dds
  return nil if edges.any?{ |uv,c| 
    u,v = uv/N,uv%N
    #puts "#{dds[u]} + #{c} <? #{dds[v]}"
    dds[u] + c < dds[v]
  }
  
  dds
end

if ds = bf(0, (0...N).to_a, es)
  puts -ds[-1]
else
  puts "inf"
end