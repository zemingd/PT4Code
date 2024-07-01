N, M = gets.chomp.split.map(&:to_i)

edges = []

M.times do
  a, b, c = gets.chomp.split.map(&:to_i)

  edges << [a, b, c]
end

def bellman_ford(s, edges)
  ret = Array.new(N + 1, -Float::INFINITY)
  ret[s] = 0

  N.times do |i|
    edges.each do |from, to, cost|
      if ret[to] < ret[from] + cost
        ret[to] = ret[from] + cost
        update = true

        if i == N - 1
          puts 'inf'
          exit
        end
      end
    end
  end

  ret
end

ret = bellman_ford(1, edges)
puts ret[N]
