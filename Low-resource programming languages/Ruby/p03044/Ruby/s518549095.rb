n = gets.to_i
root = nil
tree = []
(n-1).times do
  u, v, w = gets.split.map(&:to_i)
  if root.nil?
    root = u
  end
  node = tree[u]
  if node.nil?
    node = []
  end
  node << [v,w]
  tree[u] = node
end
color = []
color[root] = 0
queue = []
queue << root
until queue.empty?
  i = queue.shift
  node = tree[i]
  next if node.nil? || node.empty?
  node.each do |cn, cw|
    if cw.even?
      color[cn] = color[i]
    else
      color[cn] = 1 - color[i]
    end
    queue << cn
  end
end

(1..n).each do |i|
  c = color[i]
  if c.nil?
    node = tree[i]
    node.each do |cn, cw|
      if color[cn]
        if cw.even?
          c = color[cn]
        else
          c = 1 - color[cn]
        end
        break
      end
    end
  end
  puts c
end
