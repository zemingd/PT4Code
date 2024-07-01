def search(h, w)
  mapp = GRID.map(&:dup)
  mapp[h][w] = 0
  que = [[h, w]]
  while !que.empty?
    que_ = que.shift
    que_y, que_x = que_[0], que_[1]
    [[0,1],[1,0],[0,-1],[-1,0]].each do |y, x|
      ny, nx = que_y+y, que_x+x
      next if !ny.between?(0, H-1) || !nx.between?(0, W-1) || GRID[ny][nx] == -1
      if mapp[ny][nx] > mapp[que_y][que_x] + 1
        mapp[ny][nx] = mapp[que_y][que_x] + 1
        que << [ny, nx]
      end
    end
  end
  mapp.flatten.max
end

H, W = gets.split.map(&:to_i)
GRID = H.times.map{gets.chomp.split('').map{|str|str == "." ? H*W : -1}}
max = 0
H.times do |i|
  W.times do |j|
    next if GRID[i][j] == -1
    max = [max, search(i, j)].max
  end
end
p max