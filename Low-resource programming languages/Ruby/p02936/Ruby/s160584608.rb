n, q = gets.strip.split.map(&:to_i)
ab = (n-1).times.map {|line| gets.strip.split.map(&:to_i) }
pq = readlines.map {|line| line.strip.split.map(&:to_i) }

graph = Array.new(n+1) { [] }

tree_structure = Array.new(n+1) { [] }

checked = Array.new(n+1, false)
checked[1]=true

current_targets = [1]
next_targets = []

loop do
  ab.each do |l, r|
    if current_targets.include?(l) && !checked[r]
      graph[l] << r 
      next_targets << r
      checked[r] = true
    end

    if current_targets.include?(r) && !checked[l]
      graph[r] << l
      next_targets << l
      checked[l] = true
    end
  end

  break if next_targets.empty?
  current_targets = next_targets.uniq
  next_targets = []
end

#p graph

tree = Array.new(n+1, 0)

pq.each do |p, x|
  tree[p] += x
end

currents = [1]
until currents.empty?
  current = currents.shift

  graph[current].each do |cc|
    tree[cc] += tree[current]
  end

  currents += graph[current]
end




(1..n).each do |i|
  p tree[i]
end

