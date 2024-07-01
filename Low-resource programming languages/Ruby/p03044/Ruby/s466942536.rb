n = gets.to_i

class Node
  def initialize(index)
    @index = index
    @color = nil
    @connects = []
    @processed = false
  end

  def connect(node, w)
    @connects << {:node => node, :same => w % 2 == 0}
  end

  def connects
    return @connects
  end

  def color
    return @color
  end

  def set_color(color)
    @color = color
  end

  def processed
    @processed = true
  end

  def processed?
    return @processed
  end
end

nodes = Array.new(n) do |i|
  Node.new(i)
end

(n - 1).times do |i|
  u, v, w = gets.split.map(&:to_i)
  nodes[u - 1].connect(nodes[v - 1], w)
  nodes[v - 1].connect(nodes[u - 1], w)
end

nodes[0].set_color(0)
q = [nodes[0]]
while true
  t = q.shift
  break if t == nil
  next if t.processed?
  if t.color == nil
    q.push(t)
    next
  end
  t.processed

  t.connects.each do |c|
    if c[:same]
      c[:node].set_color(t.color)
    else
      c[:node].set_color((t.color + 1) % 2)
    end
    q.push(c[:node])
  end
end

nodes.each do |node|
  puts node.color
end