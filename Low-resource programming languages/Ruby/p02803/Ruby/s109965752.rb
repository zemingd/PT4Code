def search(h, w, cnt=0)
  @map[h][w] = cnt
  cnt += 1
  [[0,1],[1,0],[0,-1],[-1,0]].each do |y, x|
    nh, nw = h+y, w+x
    next if !nh.between?(0, H-1) || !nw.between?(0, W-1) || GRID[nh][nw] == -1
    if @map[nh][nw] > cnt
      search(nh, nw, cnt)
    end
  end
end

H, W = gets.split.map(&:to_i)
GRID = H.times.map{gets.chomp.split('').map{|str|str == "." ? H*W : -1}}
max = 0
H.times do |i|
  W.times do |j|
    next if GRID[i][j] == -1
    @map = GRID.map(&:dup)
    search(i, j)
    max = [max, @map].flatten.max
  end
end
p max