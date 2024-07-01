n = gets.to_i
nodes = Array.new(n + 1)
edges = []
(n - 1).times { edges << gets.split.map(&:to_i) }
edges.each do |u, v, w|
  if w.even?
    group = nodes[u]
    group ||= nodes[v]
    group ||= true
    nodes[u] = group
    nodes[v] = group
  else
    if u_group = nodes[u]
      nodes[v] = !u_group    
    elsif v_group = nodes[v]
      nodes[u] = !v_group
    else
      nodes[u] = true
      nodes[v] = false
    end
  end
end
nodes[1..-1].each { |node| puts node ? 0 : 1 }
