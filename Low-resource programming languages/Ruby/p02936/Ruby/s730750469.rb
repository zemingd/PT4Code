N, Q = STDIN.gets.split(" ").map(&:to_i)

ab = (N - 1).times.map{STDIN.gets.split(" ").map(&:to_i)}
px = Q.times.map{STDIN.gets.split(" ").map(&:to_i)}

# construct tree
tree = {}
ab.each do |a, b|
  if tree.has_key?(a)
    tree[a].push(b)
  else
    tree[a] = [b]
  end
end

# count
counter = Array.new(N, 0)

def count_up(p, x, tree, counter)
  counter[p - 1] = counter[p - 1] + x

  if tree.has_key?(p)
    children = tree[p]
    children.each{|child| count_up(child, x, tree, counter)}
  end
end

px.each do |p, x|
  count_up(p, x, tree, counter)
end

puts counter.join(" ")
