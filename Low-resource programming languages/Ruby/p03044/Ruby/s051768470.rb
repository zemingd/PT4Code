N = gets.to_i
es = {}
(N-1).times{
  u,v,w = gets.split.map &:to_i
  es[u] ||= {}; es[v] ||= {}
  es[u][v] = es[v][u] = w
}

colors = Array.new(N+1,nil)
colors[1] = 0
ns = [1]
while ns.size > 0 do
  xs = []
  ns.each{ |u|
    next if !es[u]
    es[u].each{ |v,w|
      es[v].delete(u)
      colors[v] = colors[u] ^ (w % 2)
      xs << v
    }
  }
  ns = xs
end

puts colors[1..-1]