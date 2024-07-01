H, W = gets.split.map &:to_i
board = []
board[0] = [-1] * (W + 2)
q = []
(1..H).each{|y|
  s = gets.chomp
  board[y] = [-1]
  (1..H).each{|x|
    if s[x-1] == ?#
      board[y][x] = 1
      q << [y, x]
    else
      board[y][x] = 0
    end
  }
  board[y] << -1
}
board[H + 1] = [-1] * (W + 2)

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