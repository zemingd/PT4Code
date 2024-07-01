H, W = gets.split.map &:to_i
board = []

q = []
H.times{|y|
  s = gets.chomp
  board[y] = []
  W.times{|x|
    if s[x] == ?#
      q << [y, x]
      board[y][x] = 1
    else
      board[y][x] = 0
    end
  }
  board[y] << 1
}
board << [1] * (W + 1)

cnt = -1
while q.size > 0
  next_q = []
  q.each{|y, x|
    [[y, x+1], [y, x-1], [y+1, x], [y-1, x]].each{|yy, xx|
      next if board[yy][xx] == 1
      board[yy][xx] = 1
      next_q << [yy, xx]
    }
  }
  q = next_q.uniq
  cnt += 1
end
p cnt