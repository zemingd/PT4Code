def ki(graph, qs)
  weight = Array.new(graph.size + 1) { 0 }
  qs.each do |q|
    weight[q[0]] += q[1]
  end

  # ans = []
  #
  # f = ->(node, parent_weight) {
  #   return if ans[node]
  #   ans[node] = weight[node] + parent_weight
  #   return if graph[node].nil?
  #   graph[node].each do |n|
  #     f.call(n, ans[node])
  #   end
  # }
  # f.call(1, 0)
  #
  # ans.join("\s")

  visited = {}
  queue = [1]
  while !queue.empty?
    node = queue.shift
    next if visited[node]
    visited[node] = true
    graph[node].each do |n|
      if !visited[n]
        weight[n] += weight[node]
        queue << n
      end
    end
  end

  weight.shift
  weight.join("\s")
end

n, q = gets.split.map(&:to_i)
graph = Hash.new{|h,k| h[k] = []}
(n - 1).times do
  a, b = gets.split.map(&:to_i)
  graph[a] << b
  graph[b] << a
end

qs = []
q.times do
  qs << gets.split.map(&:to_i)
end


puts ki(graph, qs)
