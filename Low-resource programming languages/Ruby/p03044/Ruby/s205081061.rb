def even_relation(edges)
  neighbors = Hash.new { |h, k| h[k] = [] }
  costs = Hash.new { |h, k| h[k] = {} }

  edges.each do |edge|
    v, u, w = edge
    v -= 1
    u -= 1

    neighbors[v] << u
    neighbors[u] << v

    costs[v][u] = w
    costs[u][v] = w
  end

  colors = [0]
  queue = [0]

  until queue.empty?
    v = queue.shift

    neighbors[v].each do |u|
      next if colors[u]

      colors[u] = (colors[v] + costs[v][u]) % 2
      queue << u
    end
  end

  colors
end

edges = []
gets.to_i.times do
  edges << gets.split.map(&:to_i)
end

puts even_relation(edges)