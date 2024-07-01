H, W = gets.chomp.split().map(&:to_i)
MAZE = Array.new(H)
H.times do |i|
  MAZE[i] = gets.chomp.chars
end

def bfs(start)
  queue = []
  costMemo = H.times.map { Array.new(W, -1) }
  #最初のキューを入れる (h, w, goal, cost)
  queue.push([start[0], start[1], 0])
  
  while !queue.empty? do
    farCost = 0
    #キューを取りだす
    loc = queue.shift
    h = loc[0]; w = loc[1]; cost = loc[2]
    #コストの記録を行い、既に短い経路が見つかっている場合はnext
    if costMemo[h][w] == -1 || costMemo[h][w] > cost 
      costMemo[h][w] = cost
    else
      next
    end
    
    #進行方向のキューを追加（上下、左右
    queue.push([h + 1, w, cost + 1]) if h < H - 1 && MAZE[h + 1][w] == '.'
    queue.push([h - 1, w, cost + 1]) if h > 0 && MAZE[h - 1][w] == '.'
    queue.push([h, w + 1, cost + 1]) if w < W - 1 && MAZE[h][w + 1] == '.'
    queue.push([h, w - 1, cost + 1]) if w > 0 && MAZE[h][w - 1] == '.'
  end
  
  #もっとも高かったコストを返す
  return costMemo.flatten.max
end

ans = -1

H.times do |i|
  W.times do |j|
    next if MAZE[i][j] == '#'
    mazeCost = bfs([i, j])
    ans = mazeCost if ans == -1 || ans < mazeCost
  end
end

puts ans