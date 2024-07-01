N, M, R = gets.chomp.split.map(&:to_i)
r = gets.chomp.split.map(&:to_i)

d = Array.new(N + 1) { Array.new(N + 1, -1) }
dist = Hash.new { |h, k| h[k] = Hash.new }

M.times do
  a, b, c = gets.chomp.split.map(&:to_i)
  d[a][b] = c
  d[b][a] = c
end

r.combination(2) do |s, t|
  queue = []
  queue << [s, 0]
  check_list = Hash.new

  until queue.empty?
    node = queue.shift
    next if check_list[node.first]
    check_list[node.first] = true

    if node.first == t
      dist[s][node.first] = node.last
      dist[node.first][s] = node.last
      break
    end

    1.upto(N) do |n|
      next if d[node.first][n] < 0 || node.first == n
      queue << [n, node.last + d[node.first][n]]
      queue.sort_by! { |q| q.last }
    end
  end
end

puts r.permutation.map { |list|
  cost = 0

  list.each_cons(2) do |a, b|
    cost += dist[a][b]
  end

  cost
}.min
