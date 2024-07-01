h, w = gets.split.map(&:to_i)

DIRS_X = [0, 1, 0, -1]
DIRS_Y = [-1, 0, 1, 0]

Node = Struct.new('Node', :cost, :y, :x)

nodes = []

h.times do
  nodes << gets.chomp.chars
end

start_pos = []
nodes.each_with_index do |rows, y|
  rows.each_with_index do |c, x|
    start_pos << [y, x] if c == '.'
  end
end

max_cost = -1

start_pos.each do |start_y, start_x|
  costs = Array.new(h).map { Array.new(w, -1) }
  # queue = [Node.new(0, start_y, start_x)]
  queue = [0, start_y, start_x]

  while !queue.empty?
    node = queue.shift
    y = node[1]
    x = node[2]
    # y = node.y
    # x = node.x
    costs[y][x] = node[0]
    4.times do |i|
      ny = y + DIRS_Y[i]
      nx = x + DIRS_X[i]
      next if ny < 0 || ny >= h || nx < 0 || nx >= w
      next if costs[ny][nx] != -1
      next if nodes[ny][nx] != '.'
      queue.push(Node.new(node[0] + 1, ny, nx))
    end
  end
  max_cost = [max_cost, costs.flatten.max].max
end
puts max_cost