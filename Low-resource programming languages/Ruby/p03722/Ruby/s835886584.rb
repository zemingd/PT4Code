def bellman_ford(n, graph, start=0, last=n-1)
  r = [-1.0/0] * n
  r[start] = 0

  g = lambda{|t, &block|
    t.times{|i|
      graph.each{|from, to, cost|
        if r[from] != -1.0/0 && r[to] < r[from] + cost
          r[to] = r[from] + cost
          block.(to) if block
        end
      }
    }
  }
  g.(n-1)
  neg = [false] * n
  g.(n){|to| neg[to] = true}

  [r[last], neg[last]]
end

N, M = gets.split.take(2).map(&:to_i)
Graph = M.times.map{
  a,b,c= gets.split.take(3).map(&:to_i)
  # from, to, score(cost)
  [a-1, b-1, c]
}

score, closep = bellman_ford(N, Graph, 0, N-1)
puts closep ? :inf : score
