H, W = gets.split.map(&:to_i)
board = H.times.map { gets.chomp.chars }

def bfs(board, s, used_memo)
  distance = [
    [-1, 0],
    [1, 0],
    [0, -1],
    [0, 1]
  ]
  ret = {}
  used = {}
  # pos, distance
  queue = [[s, 0]]
  while !queue.empty?
    pos, d = queue.shift
    used[pos] = true
    used_memo[pos] = true
    ret[pos] = d
    i, j = pos
    distance.each do |(id, jd)|
      new_i = i + id
      new_j = j + jd
      next if new_i < 0 || new_i >= H || new_j < 0 || new_j >= W
      next if board[new_i][new_j] == '#'
      new_pos = [new_i, new_j]
      next if used[new_pos]
      queue.push([new_pos, d + 1])
    end
  end
  ret
end

ans = 0
used = {}
(0...H).each do |i|
  (0...W).each do |j|
    if board[i][j] == '.' && !used[[i, j]]
      pos = [i, j]
      ret = bfs(board, pos, used)
      base_pos, _ = ret.max_by { |pos, d| d }
      # p base_pos
      ret = bfs(board, base_pos, used)
      max_d = ret.values.max
      ans = max_d if max_d > ans
    end
  end
end
puts ans