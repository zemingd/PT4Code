h, w = gets.split.map(&:to_i)

DIRS_X = [0, 1, 0, -1]
DIRS_Y = [-1, 0, 1, 0]

Node = Struct.new('Node', :cost, :y, :x)

nodes = []

h.times do
  nodes << gets.chomp.chars
end

start_y = 0
start_x = 0

start_pos = []
nodes.each_with_index do |rows, y|
  rows.each_with_index do |c, x|
    start_pos << [y, x] if c == '.'
  end
end


max_cost = -1

start_pos.each do |start_y, start_x|
  # p [start_y, start_x]
  # debug = start_y == 2 && start_x == 0
  visited = Array.new(h).map { Array.new(w, false) }
  queue = [Node.new(0, start_y, start_x)]

  while !queue.empty?
    node = queue.shift
    # p node if debug
    max_cost = [node.cost, max_cost].max
    y = node.y
    x = node.x
    visited[y][x] = true
    4.times do |i|
      ny = y + DIRS_Y[i]
      nx = x + DIRS_X[i]
      next if ny < 0 || ny >= h || nx < 0 || nx >= w
      next if visited[ny][nx]
      next if nodes[ny][nx] != '.'
      queue.push(Node.new(node.cost + 1, ny, nx))
    end
  end
end
puts max_cost