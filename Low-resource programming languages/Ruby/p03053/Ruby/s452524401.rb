# coding: utf-8
H, W = gets.chomp.split.map(&:to_i)
# p H, W
a = []
nodes = []
(0..(H-1)).each do |h|
  b = gets.chomp
  m = Array.new(W)
  (0..(W-1)).each do |w|
    if b[w] == "#" then
      m[w] = 0
      nodes << [w, h]
    end
  end
  a << m
end
# p a
# p nodes

max_op = 0
while not nodes.empty? do
  w, h = nodes.shift
  t = a[h][w] +1

  # 上
  if (h > 0) and not a[h-1][w] then
    a[h-1][w] = t
    max_op = t if max_op < t
    nodes.push [w, h-1]
  end

  # 下
  if (h + 1 < H) and not a[h+1][w] then
    a[h+1][w] = t
    max_op = t if max_op < t
    nodes.push [w, h+1]
  end
  
  # 右
  if (w > 0) and not a[h][w-1] then
    a[h][w-1] = t
    max_op = t if max_op < t
    nodes.push [w-1, h]
  end
  
  # 左
  if (w + 1 < W) and not a[h][w+1] then
    a[h][w+1] = t
    max_op = t if max_op < t
    nodes.push [w+1, h]
  end
end
puts max_op
