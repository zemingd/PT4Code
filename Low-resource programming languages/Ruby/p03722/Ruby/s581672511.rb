def bellman(start, n, edges)
    dist = Array.new(n+1, Float::INFINITY)
    prev = Array.new(n+1)
    dist[start] = 0
    n.times do |i|
        update = false
        edges.length.times do |src|
            edges[src].each do |dst, cost|
                if dist[dst] > dist[src] + cost
                    update = true
                    prev[dst] = src
                    if i == n - 1
                        dist[dst] = -Float::INFINITY
                    else
                        dist[dst] = dist[src] + cost
                    end
                end
            end
        end
        break unless update
    end
    return dist, prev
end



N, M = gets.split.map(&:to_i)

edges = Array.new(N+1){Hash.new}
M.times do |i|
    a, b, c = gets.split.map(&:to_i)
    edges[a][b] = -c
end

dist, _ = bellman(1, N, edges)

if dist[N] == -Float::INFINITY
    puts 'inf'
else
    puts -dist[N]
end
