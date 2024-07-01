def dfs(maze, data, i, j, cnt, h, w)
  data[i][j] = cnt
  if i > 0 && maze[i - 1][j] == "." && data[i - 1][j] == -1 then dfs(maze, data, i - 1, j, cnt + 1, h, w) end
  if i < h - 1 && maze[i + 1][j] == "." && data[i + 1][j] == -1 then dfs(maze, data, i + 1, j, cnt + 1, h, w) end
  if j > 0 && maze[i][j - 1] == "." && data[i][j - 1] == -1 then dfs(maze, data, i, j - 1, cnt + 1, h, w) end
  if j < w - 1 && maze[i][j + 1] == "." && data[i][j + 1] == -1 then dfs(maze, data, i, j + 1, cnt + 1, h, w) end
end

h, w = gets.split.map &:to_i
maze = []
h.times do maze << gets.chomp.chars end
ans = []

for y0 in 0 .. h - 1 do for x0 in 0 .. w - 1 do
  if maze[y0][x0] == "#" then next end
  data = Array.new(h).map{Array.new(w, -1)}
  dfs(maze, data, y0, x0, 0, h, w)
  for i in 0 .. h - 1 do for j in 0 .. w - 1 do ans << data[i][j] end end
end end

puts ans.max
