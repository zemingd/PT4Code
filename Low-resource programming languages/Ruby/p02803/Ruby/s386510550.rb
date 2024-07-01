H, W = gets.split.map(&:to_i)
board = H.times.map { gets.chomp.chars }

def bfs(board, s)
  distance = [
    [-1, 0],
    [1, 0],
    [0, -1],
    [0, 1]
  ]
  ret = 0
  used = {}
  used[s] = true
  # pos, distance
  queue = [[s, 0]]
  while !queue.empty?
    pos, d = queue.shift
    ret = d if d > ret
    i, j = pos
    distance.each do |(id, jd)|
      new_i = i + id
      new_j = j + jd
      next if new_i < 0 || new_i >= H || new_j < 0 || new_j >= W
      next if board[new_i][new_j] == '#'
      new_pos = [new_i, new_j]
      next if used[new_pos]
      used[new_pos] = true
      queue.push([new_pos, d + 1])
    end
  end
  ret
end

ans = 0
(0...H).each do |i|
  (0...W).each do |j|
    if board[i][j] == '.'
      pos = [i, j]
      ret = bfs(board, pos)
      ans = ret if ret > ans
    end
  end
end
puts ans