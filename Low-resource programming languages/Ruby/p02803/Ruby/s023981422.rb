h, w = gets.split.map(&:to_i)
maze = h.times.map {gets.chomp}

result = 0
Step = Struct.new(:x, :y, :step)

try = ->(x, y) {
  tmp = maze.map(&:dup)
  q = [Step.new(x, y, 0)]
  max_step = 0
  while (now = q.shift)
    tmp[now.y][now.x] = "$"
    max_step = now.step if now.step > max_step
    [[1, 0], [0, -1], [-1, 0], [0, 1]].each do |dx, dy|
      nx = now.x + dx
      ny = now.y + dy
      next if nx < 0 || nx >= w || ny < 0 || ny >= h
      q << Step.new(nx, ny, now.step + 1) if tmp[ny][nx] == "."
    end
  end
  result = max_step if max_step > result
}

h.times do |y|
  w.times {|x| try.(x, y) if maze[y][x] == "."}
end

puts result