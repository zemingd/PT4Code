require 'pp'
N, M, R = gets.chomp.split.map(&:to_i)
r = gets.chomp.split.map(&:to_i)

d = Array.new(N + 1) { Array.new(N + 1, -1) }

M.times do
  a, b, c = gets.chomp.split.map(&:to_i)
  d[a][b] = c
  d[b][a] = c
end

r.each_cons(2) do |s, t|
  queue = []
  queue << [s, 0]
  check_list = Hash.new(1_000_000)

  until queue.empty?
    node = queue.shift
    next if check_list[node.first] <= node.last
    if s != node.first
      d[s][node.first] = node.last
      d[node.first][s] = node.last
    end
    check_list[node.first] = node.last

    1.upto(N) do |n|
      next if d[node.first][n] < 0
      queue << [n, node.last + d[node.first][n]]
    end
  end
end

=begin
1.upto(N) do |k|
  1.upto(N) do |i|
    1.upto(N) do |j|
      d[i][j] = [d[i][j], d[i][k] + d[k][j]].min
    end
  end
end
=end

puts r.permutation.map { |list|
  cost = 0

  list.each_cons(2) do |a, b|
    cost += d[a][b]
  end

  cost
}.min
