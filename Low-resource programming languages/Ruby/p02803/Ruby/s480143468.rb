class Position
  def initialize(x = 1, y = 1, count = 0)
    @x = x
    @y = y
    @count = count
  end
  attr_reader :x, :y, :count
  
  def ==(po)
    @x == po.x && @y == po.y
  end
end

h, w = gets.split.map(&:to_i)
ss = h.times.map {gets.chomp}
field = nil

Position.define_method(:succ) do
  x = @x + 1
  y = @y
  if x > w
    x = 1
    y += 1
    return false if y > h
  end
  Position.new(x, y)
end

Position.define_method(:move) do |dir|
  x, y = @x, @y
  dx, dy = [[1, 0], [0, -1], [-1, 0], [0, 1]][dir]
  x += dx
  y += dy
  return false if x > w || x < 1 || y > h || y < 1
  return false if field[y - 1][x - 1] != "."
  Position.new(x, y, @count + 1).mark
end

Position.define_method(:mark) do
  field[@y - 1][@x - 1] = "*"
  self
end

solve_maze = ->(start, goal) {
  return 0 if ss[start.y - 1][start.x - 1] == "#"
  return 0 if ss[goal.y - 1][goal.x - 1] == "#"
  field = ss.map(&:dup)
  q = [start]
  start.mark
  while (po = q.shift)
    return po.count if po == goal
    4.times do |dir|
      nxt = po.move(dir)
      q << nxt if nxt
    end
  end
  raise "Error"
}


start = Position.new
max = 0
loop do
  goal = start.dup
  loop do
    tmp = solve_maze.(start, goal)
    max = tmp if max < tmp
    break unless (goal = goal.succ)
  end
  break unless (start = start.succ)
end

puts max