n, m = gets.strip.split.map(&:to_i)
abc = readlines.map {|line| line.strip.split.map(&:to_i) }

graph = Array.new(n+1){ [] }
abc.each do |a, b, c|
  graph[a] ||= []
  graph[a] << [b, -c]
end

INF=10**13
dist = [INF]*(n+1)
dist[1]=0
q = [[1, 0]]
updated=false
n.times do
  updated=false

  break if q.empty?
  c, cost = q.shift
  graph[c].each do |nex, n_cost|
    if dist[nex] > dist[c] + n_cost
      dist[nex] = dist[c] + n_cost
      q.push([nex, cost+n_cost])
      updated=true
    end
  end
end

if updated
  puts 'inf'
  exit
end

p dist[n]*-1