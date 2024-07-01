H, W = gets.split.map(&:to_i)
board = H.times.map { gets.chomp.chars }

def bfs(board, si, sj)
  distance = [
    [-1, 0],
    [1, 0],
    [0, -1],
    [0, 1]
  ]
  ret = 0
  used = Array.new(H) { Array.new(W, false) }
  # pos, distance
  queue = [[si, sj, 0]]
  while !queue.empty?
    i, j, d = queue.shift
    used[i][j] = true
    ret = d if d > ret
    distance.each do |(id, jd)|
      new_i = i + id
      new_j = j + jd
      # next if new_i < 0 || new_i >= H || new_j < 0 || new_j >= W
      # next if used[new_i][new_j]
      # next if board[new_i][new_j] == '#'
      if new_i >= 0 && new_i < H && new_j >= 0 && new_j < W \
        && !used[new_i][new_j] \
        && board[new_i][new_j] == '.'
        queue.push([new_i, new_j, d + 1])
      end
    end
  end
  ret
end

ans = 0
(0...H).each do |i|
  (0...W).each do |j|
    if board[i][j] == '.'
      ret = bfs(board, i, j)
      ans = ret if ret > ans
    end
  end
end
puts ans