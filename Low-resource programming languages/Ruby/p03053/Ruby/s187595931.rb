h, w = gets.split.map &:to_i
board = []
board[0] = [-1] * (w + 2)
q = []
(1..h).each{|y|
  s = gets.chomp
  board[y] = [-1]
  (1..w).each{|x|
    if s[x-1] == ?#
      board[y][x] = 1
      q << [y, x]
    else
      board[y][x] = 0
    end
  }
  board[y] << -1
}
board[h + 1] = [-1] * (w + 2)

cnt = -1
while q.size > 0
  next_q = []
  q.each{|y, x|
    [[y, x+1], [y, x-1], [y+1, x], [y-1, x]].each{|yy, xx|
      next if board[yy][xx] != 0
      board[yy][xx] = 1
      next_q << [yy, xx]
    }
  }
  q = next_q
  cnt += 1
end
p cnt