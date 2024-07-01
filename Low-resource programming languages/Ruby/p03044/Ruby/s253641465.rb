N = STDIN.gets.chomp.to_i
info = Array.new(0)
result = Array.new(N, -1)

while (line = STDIN.gets) != nil do
  info.push(line.chomp.split(' ').map(&:to_i))
end

tree = Array.new(N).map{Array.new(0)}

info.each { |a|
  # info[i-1][0] に u
  # info[i-1][1] に v
  u, v, w = a
  bin = w % 2
  tree[u-1].push([v-1, bin])
  tree[v-1].push([u-1, bin])
}

result[0] = 0
# queueに何かある
queue = Array.new(0)
queue.push(0)
while (queue.size > 0) do
  position = queue.shift
  tree[position].each{ |infoList|
    nodeNum, cost = infoList
    if result[nodeNum] == -1 then
      result[nodeNum] = result[position] + cost % 2
      queue.push(nodeNum)
    end
  }
end

result.each { |a|
  puts a
}
