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
  ret = Array.new(N + 1, -Float::INFINITY)
  ret[s] = 0

  N.times do |i|
    update = false

    edges.each do |from, to, cost|
      if ret[to] < ret[from] + cost
        ret[to] = ret[from] + cost
        update = true

        return false if i == N - 1
      end
    end

    break unless update
  end

  ret
end

if ret = bellman_ford(1, edges)
  puts ret[N]
else
  puts 'inf'
end
