# coding: utf-8
class Node
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end
end

H, W = gets.chomp.split.map(&:to_i)
# p H, W
a = []
W.times do
  a << Array.new(H)
end
nodes = []
(0..(H-1)).each do |y|
  b = gets.chomp
  (0..(W-1)).each do |x|
    if b[x] == "#" then
      a[x][y] = 0
      nodes.push Node.new(x,y)
    end
  end
end
# p a
# p nodes
max_op = 0
while not nodes.empty? do
  n = nodes.shift
  # 上
  w = a[n.x][n.y] + 1
  if (n.y > 0) and not a[n.x][n.y - 1] then
    a[n.x][n.y - 1] = w
    max_op = w if max_op < w
    nodes.push Node.new(n.x, n.y - 1)
  end
  # 下
  if (n.y + 1 < H) and not a[n.x][n.y + 1] then
    a[n.x][n.y + 1] = w
    max_op = w if max_op < w
    nodes.push Node.new(n.x, n.y + 1)
  end
  # 右
  if (n.x > 0) and not a[n.x - 1][n.y] then
    a[n.x - 1][n.y] = w
    max_op = w if max_op < w
    nodes.push Node.new(n.x - 1, n.y)
  end
  # 左
  if (n.x + 1 <  W) and not a[n.x + 1][n.y] then
    a[n.x + 1][n.y] = w
    max_op = w if max_op < w
    nodes.push Node.new(n.x + 1, n.y)
  end
end
puts max_op
    