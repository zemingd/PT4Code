n, q = gets.split.map(&:to_i)

tree = Array.new
1.upto(n-1) do |i|
  ai, bi = gets.split.map(&:to_i)
  tree[bi] = ai
end

points = Array.new(n + 1, 0)
1.upto(q) do |i|
  pi, xi = gets.split.map(&:to_i)
  points[pi] += xi
end

answer = Array.new(n + 1, 0)
n.downto(1) do |node_n|
  answer[node_n] += points[node_n]
  if node_n == 1
    break
  end
  upper = tree[node_n]
  loop do
    answer[node_n] += points[upper]
    break if upper == 1
    upper = tree[upper]
  end
end

answer.shift
puts "#{answer.join(" ")}\n"
