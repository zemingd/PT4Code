h, w = gets.split(" ").map(&:to_i)
map = Array.new(h)
h.times do |i|
  map[i] = gets.chomp.chars
end

def bfs(map, sx, sy)
  visited = Hash.new
  queue = []
  hop = []

  return 0 if map[sy][sx] == '#'

  step = 0
  key = "#{sx}.#{sy}"
  visited[key] = step
  queue.push([sx, sy, step])
  until queue.empty?
    x, y, step = queue.shift

    (0..3).each do |i|
      nx = x
      ny = y
      case i
      when 0
        nx = x - 1
      when 1
        nx = x + 1
      when 2
        ny = y - 1
      when 3
        ny = y + 1
      end

      key = "#{nx}.#{ny}"
      next if nx < 0 || nx >= map[y].size || ny < 0 || ny >= map.size
      next if visited.key?(key)

      visited[key] = step
      next if map[ny][nx] == '#'

      queue.push([nx, ny, step + 1])
      hop.push(step + 1)
    end
  end

  hop.max
end

result = 0
(0..(w - 1)).each do |x|
  (0..(h - 1)).each do |y|
    result = [result, bfs(map, x, y)].max
  end
end

puts result