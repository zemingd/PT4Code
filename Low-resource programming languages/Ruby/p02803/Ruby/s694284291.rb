$dx = [1, 0, -1, 0]
$dy = [0, 1, 0, -1]

def bfs(grid, sx, sy)
  #print grid
  queue = [[sx, sy]]
  dist = {[sx, sy] => 0}
  until queue.empty?
    #print dist
    #puts
    crd = queue.shift
    4.times do |dir|
      #puts
      nx = crd[0] + $dx[dir]
      ny = crd[1] + $dy[dir]
      #print nx
      #print ny
      next if nx < 0 || nx >= H || ny < 0 || ny >= W
      next if grid[nx][ny] == "#"
      if dist[[nx, ny]] == nil
        #print "checking"
        dist[[nx, ny]] = dist[[crd[0], crd[1]]] + 1
        queue.push([nx, ny])
      end
    end
  end
  dist.values.max
end

H, W = gets.split.map(&:to_i)
grid = []
H.times do
  grid.push(gets.chomp.split(""))
end

res = 0
(0..H-1).each do |sx|
  (0..W-1).each do |sy|
    #puts
    #print sx
    #print sy
    #print grid
    if grid[sx][sy] != "#"
      maxl = bfs(grid, sx, sy)
      res = [maxl, res].max
    end
  end
end
puts res