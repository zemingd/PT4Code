h, w = gets.split.map(&:to_i)
maze = h.times.map {gets.chomp}

result = 0
Step = Struct.new(:x, :y, :step)

try = ->(x, y) {
  q = [Step.new(x, y, 0)]
  max_step = 0
  while (now = q.shift)
    maze[now.y][now.x] = "$"
    max_step = [max_step, now.step].max
    [[1, 0], [0, -1], [-1, 0], [0, 1]].each do |dx, dy|
      nx = now.x + dx
      ny = now.y + dy
      next if nx < 0 || nx >= w || ny < 0 || ny >= h
      q << Step.new(nx, ny, now.step + 1) if maze[ny][nx] == "."
    end
  end
  result = [result, max_step].max
}

h.times do |y|
  w.times do |x|
    if maze[y][x] == "."
      try.(x, y)
      maze.each {|row| row.gsub!("$", ".")}
    end
  end
end

puts result