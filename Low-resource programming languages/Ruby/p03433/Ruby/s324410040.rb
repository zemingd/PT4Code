require 'pp'

@h, @w = gets.strip.split.map(&:to_i)
maze = []

@h.times do
  maze << gets.strip.split('')
end

# 元の白マスの個数
# pp maze
num_whites = 0
@h.times do |i|
  @w.times do |j|
    # puts "maze[i][j] = #{maze[i][j]}"
    if maze[i][j] == '.'
      num_whites += 1
    end
  end
end

def bfs(maze)
  q = [[0, 0]]
  path = []
  @h.times do |i|
    path << []
    @w.times do |j|
      path[i] << nil
    end
  end

  until q.empty? do
    now_x, now_y = q.shift

    # maze.each do |row|
    #   puts row.join('')
    # end
    # 次のマスに到達した
    # ここはゴールか？
    if now_x == @w - 1 && now_y == @h - 1
      break
    end

    dirs = [
      [now_x - 1, now_y],
      [now_x + 1, now_y],
      [now_x, now_y - 1],
      [now_x, now_y + 1]
    ]
    dirs.each do |d|
      x, y = d
      if x < 0 || @w <= x || y < 0 || @h <= y
        next
      end
      cell = maze[y][x]
      if cell == '#'
        next
      end

      # 進めるマスがあった
      # puts "すすめるマスがあった(x, y) = #{x}, #{y}"

      # チェック済みにする
      maze[y][x] = '#'

      # 経路復元用のメモ
      if path[y][x] == nil
        path[y][x] = [now_x, now_y]
      end

      # キューに入れる
      q << [x, y]
    end
  end

  # 経路を返して探索終わり
  path
end

def path_length(path)
  len = 0
  x, y = @w - 1, @h - 1
  until (x == 0 && y == 0)
    # puts ("x, y = #{x}, #{y}")
    len += 1
    x, y = path[y][x]
  end
  len
end

path = bfs(maze)
# pp path
if path[@h - 1][@w - 1] == nil
  # ゴールにたどり着けない
  puts -1
else
  # puts "num_whites = #{num_whites}"
  # 元の白マスの個数 - 経路の長さ - 1 個塗って良い
  puts num_whites - path_length(path) - 1
end