class Position
  def initialize(x = 0, y = 0, count = 0)
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

Position.send(:define_method, :succ) do
  x = @x + 1
  y = @y
  if x >= w
    x = 0
    y += 1
    return false if y >= h
  end
  Position.new(x, y)
end

Position.send(:define_method, :move) do |dir|
  x, y = @x, @y
  dx, dy = [[1, 0], [0, -1], [-1, 0], [0, 1]][dir]
  x += dx
  y += dy
  return false if x >= w || x < 0 || y >= h || y < 0
  return false if field[y][x] != "."
  Position.new(x, y, @count + 1).mark
end

Position.send(:define_method, :mark) do
  field[@y][@x] = "*"
  self
end

solve_maze = ->(start) {
  return 0 if ss[start.y][start.x] == "#"
  field = ss.map(&:dup)
  max = 0
  q = [start]
  start.mark
  while (po = q.shift)
    max = po.count if po.count > max
    4.times do |dir|
      nxt = po.move(dir)
      q << nxt if nxt
    end
  end
  max
}


start = Position.new
max = 0
loop do
  tmp = solve_maze.(start)
  max = tmp if tmp > max
  break unless (start = start.succ)
end

puts max