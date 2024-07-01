H, W = gets.split.map &:to_i
Board = $<.map{|s|
  s.chomp.chars
}
res = H.times.map{ [9e9] * W }

H.times{|i|
  W.times{|j|
    res[i][j] = 0 if Board[i][j] == ?#
  }
}

f = ->y, x, n = 0{
  return if !y.between?(0, H-1)
  return if !x.between?(0, W-1)
  return if res[y][x] < n
  res[y][x] = n
  [[0, 1], [0, -1], [1, 0], [-1, 0]].each{|dy, dx|
    f[y+dy, x+dx, n+1]
  }
}

H.times{|i|
  W.times{|j|
    if res[i][j] == 0
      f[i, j]
    end
  }
}
p res.map(&:max).max
