inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

WHITE = "0"
BLACK = "1"

N = inputs[0].to_i

nodes = Hash.new
(N-1).times do |i|
  u, v, w = inputs[i+1].split(" ").map(&:to_i)
  nodes[u] ||= Hash.new
  nodes[u][v] = w

  nodes[v] ||= Hash.new
  nodes[v][u] = w
end

res = Hash.new

def checkNode(nodes, res, t, sum)
  nexts = nodes[t]
  return if !nexts

  nexts.each do |k, v|
    if res[k]
      next
    end
    if (sum + v) % 2 == 0
      res[k] = WHITE
      checkNode(nodes, res, k, sum += v)
    else
      res[k] = BLACK
    end
  end
end

res[1] = 0
checkNode(nodes, res, 1, 0)

N.times do |i|
  index = i + 1
  if res[index]
    puts WHITE
  else
    puts BLACK
  end
end