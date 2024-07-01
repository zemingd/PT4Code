h,w = gets.chomp.split().map(&:to_i)
s= []
h.times do
  s.push gets.chomp.split(//)
end

def solve(grid,yy,xx, h,w)
  dy = [0, 1, 0, -1]; dx = [1, 0, -1, 0]

  visited = Array.new(h){Array.new(w, 0)}
  visited[yy][xx] = true
  q = [[yy,xx,0]]

  ans = 0
  until q.empty?
    y,x,cost = q.shift
    4.times do |i|
      ny = y + dy[i]; nx = x + dx[i]
      if (0 <= ny && ny < h) && (0 <= nx && nx < w) && grid[ny][nx] != '#' && visited[ny][nx] == 0
        visited[ny][nx] = 1
        q.push [ny, nx, cost+1]
        ans = cost+1 if ans < cost+1
      end
    end
  end
  ans
end

ans = 0
h.times do |i|
  w.times do |j|
    if s[i][j] != '#'
      solved = solve(s,i,j, h,w)
      ans = solved if ans < solved
    end
  end
end

puts ans


