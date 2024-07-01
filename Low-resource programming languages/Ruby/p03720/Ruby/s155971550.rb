N, M = gets.split.map(&:to_i)

roads = Array.new(N+1, 0)
M.times do |i|
    a, b = gets.split.map(&:to_i)
    roads[a] += 1
    roads[b] += 1
end

(1..N).each do |i|
    puts roads[i]
end