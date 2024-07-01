def bfs(row, col, maze)
  now = [row, col]
  dist = Hash.new
  dist[now] = 0
  q = [now]
  until q.empty?
    now = q.shift
    return -1 if maze[now[0]][now[1]] == '#'
    up = [now[0] - 1, now[1]]
    down = [now[0] + 1, now[1]]
    left = [now[0], now[1] - 1]
    right = [now[0], now[1] + 1]
    # 上
    if now[0] - 1 >=0 && maze[up[0]][up[1]] == '.' && !dist[up]
      q.push up
      dist[up] = dist[now] + 1
    end
    # した
    if now[0] + 1 <= maze.length - 1  && maze[down[0]][down[1]] == '.' && !dist[down]
      q.push down
      dist[down] = dist[now] + 1
    end
    # 左
    if now[1] - 1 >=0 && maze[left[0]][left[1]] == '.' && !dist[left]
      q.push left
      dist[left] = dist[now] + 1
    end
    # 右
    if now[1] + 1 <= maze[0].length - 1 && maze[right[0]][right[1]] == '.' && !dist[right]
      q.push right
      dist[right] = dist[now] + 1
    end
  end
  dist.values.max
end

h, w = gets.split.map(&:to_i)
maze = []
for i in 0..h-1
  maze << gets.chomp.chars
end

ans = []
ans << bfs(0, 0, maze)
for i in 0..h-1
  for j in 0..w-1
    ans << bfs(i, j, maze)
  end
end
p ans.max
