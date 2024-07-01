N, M = gets.chomp.split.map(&:to_i)

edges = []

M.times do
  a, b, c = gets.chomp.split.map(&:to_i)

  edges << [a, b, c]
end

def find_negative_loop(edges)
  ret = Array.new(N + 1, 0)

  N.times do |i|
    edges.each do |from, to, cost|
      if ret[to] > ret[from] - cost
        ret[to] = ret[from] - cost

        if i == N - 1
          return true
        end
      end
    end
  end

  false
end

def bellman_ford(s, edges)
  ret = Array.new(N + 1, Float::INFINITY)
  ret[s] = 0
  i = 0

  loop do
    update = false

    edges.each do |from, to, cost|
      if ret[to] > ret[from] - cost
        ret[to] = ret[from] - cost
        update = true
      end
    end

    break unless update

    i += 1
  end

  ret
end

if find_negative_loop(edges)
  puts 'inf'
else
  ret = bellman_ford(1, edges)
  puts -ret[N]
end
