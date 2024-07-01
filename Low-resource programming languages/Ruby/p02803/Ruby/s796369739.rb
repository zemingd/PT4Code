h, w = gets.split.map(&:to_i)
maze = []
h.times do
  maze << gets.chomp.chars
end

dx = [-1, 0, 1, 0]
dy = [0, -1, 0, 1]
ans = 0
queue = []
(0..h-1).each do |j|
  (0..w-1).each do |i|
    next if maze[j][i] == "#"

    queue << [j, i]
    d = Array.new(h) { Array.new(w, 0) }
    visited = Array.new(h) { Array.new(w, false) }
    d[j][i] = 0
    visited[j][i] = true
    while !queue.empty? do
      y, x = queue.shift
      (0..3).each do |k|
        ny = y + dy[k]
        nx = x + dx[k]
        next if ny < 0 || nx < 0 || ny >= h || nx >= w || maze[ny][nx] == "#" || visited[ny][nx]

        d[ny][nx] = d[y][x] + 1
        visited[ny][nx] = true
        queue << [ny, nx]
      end
    end
    # puts d.inspect
    ans = [ans, d.flatten.max].max
  end
end
puts ans