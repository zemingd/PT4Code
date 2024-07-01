h,w = gets.chomp.split().map(&:to_i)

grid = []
h.times do
  grid.push gets.chomp
end

q = []
h.times do |i|
  w.times do |j|
    if grid[i][j] == '#'
      q.push [i,j, 0]
    end
  end
end

dy = [0, 1, 0, -1]; dx = [1, 0, -1, 0]
ans = 0
count = 0
until q.size <= count
  y,x,cost = q[count]
  count += 1
  4.times do |i|
    ny = y + dy[i]; nx = x + dx[i]
    if (0 <= ny && ny < h) && (0 <= nx && nx < w) && grid[ny][nx] != '#'
      grid[ny][nx] = '#'
      q.push [ny, nx, cost+1]
      ans = [ans, cost+1].max
    end
  end
end

puts ans