H, W = gets.split.map &:to_i
Board = $<.map{|s|
  s.chomp.chars.map{|c| c == ?. ? 1 : 0 }
}

DIRS = [[1, 0], [-1, 0], [0, 1], [0, -1]]

def f(y, x)
  visited = H.times.map{ [-1] * W }
  visited[y][x] = count = 0
  q = [[y, x]]
  while !q.empty?
    count += 1
    new_q = []
    q.each{|y, x|
      DIRS.each{|dy, dx|
        yy = y + dy
        xx = x + dx
        next if !yy.between?(0, H-1)
        next if !xx.between?(0, W-1)
        next if Board[yy][xx] != 1
        next if visited[yy][xx] > -1
        visited[yy][xx] = count
        new_q << [yy, xx]
      } 
    }
    q = new_q
  end
  max = count -1
  yxs = []
  H.times{|y|
    W.times{|x|
      yxs << [y, x] if visited[y][x] == max
    }
  }
  [max, yxs]
end

_, yxs = f(0,0)
ans, _  = f(*yxs[0])
p ans