n, q = gets.chomp.split(' ').map(&:to_i)
tree = Array.new(n)
n.times { |i| tree[i] = [] }
(n - 1).times do
  a, b = gets.chomp.split(' ').map { |i| i.to_i - 1 }
  tree[a] << b
  tree[b] << a
end
values = Array.new(n, 0)
q.times do
  i, v = gets.chomp.split(' ').map(&:to_i)
  values[i - 1] += v
end
queue = [0]
visited = Hash.new(false)
until queue.empty?
  q = queue.pop
  next if visited[q]
  visited[q] = true
  tree[q].each do |t|
    next if visited[t]
    values[t] += values[q]
    queue << t
  end
end
puts values.join(' ')