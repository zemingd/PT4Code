n, q = gets.strip.split.map(&:to_i)
ab = (n-1).times.map {|line| gets.strip.split.map(&:to_i) }
pq = readlines.map {|line| line.strip.split.map(&:to_i) }

graph = Array.new(n+1){ [] }

parents = Array.new(n+1){ [] }
tree_structure = Hash.new([])

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

@target_memo = {}
pq.each do |pr, x|
  if @target_memo[pr]
    @target_memo[pr].each do|i|
      tree[i] += x
    end
    next
  end

  targets = []
  currents = [pr]
  until currents.empty?
    current = currents.shift
    currents += graph[current]
    targets << current
  end

  @target_memo[pr] = targets

  targets.each do|i|
    tree[i] += x
  end

end

(1..n).each do |i|
  p tree[i]
end

