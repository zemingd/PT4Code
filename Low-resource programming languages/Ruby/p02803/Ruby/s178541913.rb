H, W = gets.chomp.split().map(&:to_i)
MAZE = Array.new(H)
H.times do |i|
  MAZE[i] = gets.chomp.chars
end

#先ずはスタートとゴールを固定してみる

@costs = H.times.map { Array.new(W, -1) }
@lowest = -1

def explore(height, width, cost, goal)
  #コストのメモ(すでにメモ済で大きい場合は探索修了
  return if cost != 0 && @costs[height][width] != -1 && cost > @costs[height][width]
  @costs[height][width] = cost
  #ゴールのチェック
  if goal == [height, width]
    @lowest = cost if @lowest == -1 || @lowest > cost
    return
  end
  #探索開始
  #４方向をチェック
  #上
  explore(height - 1, width, cost + 1, goal) if height > 0 && MAZE[height - 1][width] == '.'
  #下
  explore(height + 1, width, cost + 1, goal) if height < H - 1 && MAZE[height + 1][width] == '.'
  #右
  explore(height, width + 1, cost + 1, goal) if width < W - 1 && MAZE[height][width + 1] == '.'
  #左
  explore(height, width - 1, cost + 1, goal) if width > 0 && MAZE[height][width - 1] == '.'
end

def reset() #１探索内で使用するインスタンス変数のリセット
  @lowest = -1 #探索が終わったら最小コストをリセットする
  @costs = H.times.map { Array.new(W, -1) }  #探索が終わったらコストメモをリセットする
end

#全ての組み合わせでexploreを実行する ( h * w の自乗)
def change_goal(start)
  H.times do |i|
    W.times do |j|
      if MAZE[start[0]][start[1]] == '.' && MAZE[i][j] == '.' && start != [i, j]
        explore(start[0], start[1], 0, [i, j]) 
      end
      @max_v = @lowest if @max_v == -1 || @max_v < @lowest
      reset()
    end
  end
end

@max_v = -1

H.times do |i|
  W.times do |j|
    change_goal([i, j]) if MAZE[i][j] == '.'
  end
end

puts @max_v