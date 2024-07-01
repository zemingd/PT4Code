n, q = gets.strip.split.map(&:to_i)
ab = (n-1).times.map {|line| gets.strip.split.map(&:to_i) }
pq = readlines.map {|line| line.strip.split.map(&:to_i) }

graph = Array.new(n+1) { [] }
ab.each do |a, b|
  graph[a] << b
  graph[b] << a
end

tree = Array.new(n+1, 0)
pq.each do |p, x|
  tree[p] += x
end

checked = Array.new(n+1, false)
currents = [1]

until currents.empty?
  current = currents.shift
#  next if checked[current]

  checked[current]=true
  graph[current].each do |cc|
    next if checked[cc]
    tree[cc] += tree[current]
  end

  graph[current].each do |cc|
    currents << cc unless checked[cc]
  end
end

puts tree[1..n].join(' ')

