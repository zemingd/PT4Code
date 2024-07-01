def bellman_ford(n, graph, start=0, last=n-1)
  r = [-1.0/0] * n
  r[start] = 0

  n.times{|i|
    n.times{|from|
      graph[from].each{|to, cost|
        if r[from] != -1.0/0 && r[to] < r[from] + cost
          r[to] = r[from] + cost
          return [r[last], true] if i == n - 1
        end
      }
    }
  }
  [r[last], false]
end

N, M = gets.split.take(2).map(&:to_i)
Graph = M.times.each_with_object(N.times.map{[]}){|i,r|
  # from, to, score(cost)
  a,b,c= gets.split.take(3).map(&:to_i)
  r[a-1] << [b-1,c]
}

score, closep = bellman_ford(N, Graph, 0, N-1)
puts closep ? :inf : score
