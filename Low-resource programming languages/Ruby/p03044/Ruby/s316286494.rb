N = gets.chomp.to_i
edges = []
vertex = Array.new(N)
(N-1).times do
  edges << gets.chomp.split.map(&:to_i)
end
p edges
# edges.sort! {|e,f| e[0] <=> f[0]}
vertex[edges[0][0]] = 0
edges.each do |e|
  u, v, w = *e
  if w % 2 == 0 then
    if vertex[u] then
      vertex[v] = vertex[u]
    else
      vertex[u] = vertex[v]
    end
  else
    if vertex[u] then
      vertex[v] = 1 - vertex[u]
    else
      vertex[u] = 1 - vertex[v]
    end
  end
end
vertex.each do |v|
  puts v
end