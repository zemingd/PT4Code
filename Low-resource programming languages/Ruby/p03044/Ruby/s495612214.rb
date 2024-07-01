n = gets.chomp.to_i
uvws = (n - 1).times.map { gets.chomp.split(' ').map(&:to_i) }

conn = {}
dist = {}

uvws.each do |u, v, w|
  conn[u] = (conn[u] || []) + [v]
  conn[v] = (conn[v] || []) + [u]

  dist[u] = (dist[u] || []) + [w]
  dist[v] = (dist[v] || []) + [w]
end

colors = { 1 => 0 }
u_queue = [1]

loop do
  break if u_queue.empty?
  u = u_queue.delete_at(0)
  conn[u].zip(dist[u]).each do |v, w|
    next unless colors[v].nil?
    colors[v] = (colors[u] + w) % 2
    u_queue << v
  end
end

(1..n).map { |u| colors[u] }.each do |c|
  puts c
end
