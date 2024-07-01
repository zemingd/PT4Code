H, W = gets.split.map &:to_i
Board = []

white = H * W
q = []
H.times{|y|
  Board[y] = []
  s = gets.chomp
  W.times{|x|
    Board[y][x] = 0
    if s[x] == ?#
      white -= 1
      q << [y, x]
    end
  }
}

cnt = 0
while white > 0
  next_q = []
  q.each{|y, x|
    Board[y][x] = 1
    white -= 1
    [[0, 1], [0, -1], [1, 0], [-1, 0]].each{|dy, dx|
      yy = y + dy
      xx = x + dx
      next if !yy.between?(0, H-1)
      next if !xx.between?(0, W-1)
      next if Board[yy][xx] == 1
      next_q << [yy, xx]
    }
  }
  q = next_q.uniq
  cnt += 1
end
p cnt