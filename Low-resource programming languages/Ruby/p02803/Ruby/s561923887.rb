h,w = gets.split.map(&:to_i)
s = h.times.map{gets.split("").map{|c|c=="."}}

start = []
h.times{|i|
  w.times{|j|
    if s[i][j]
      start = [i,j]
    end
  }
}

q = [start]
dist = h.times.map{[987]*w}
dist[start[0]][start[1]] = 0
while q.size!=0
  now = q.pop
  y,x = now
  nowdist = dist[y][x]
  if y+1<h && s[y+1][x] && dist[y+1][x]>nowdist+1
    q << [y+1,x]
    dist[y+1][x] = nowdist+1
  end
  if y-1>=0 && s[y-1][x] && dist[y-1][x]>nowdist+1
    q << [y-1,x]
    dist[y-1][x] = nowdist+1
  end
  
  if x+1<w && s[y][x+1] && dist[y][x+1]>nowdist+1
    q << [y,x+1]
    dist[y][x+1] = nowdist+1
  end
  if x-1>=0 && s[y][x-1] && dist[y][x-1]>nowdist+1
    q << [y,x-1]
    dist[y][x-1] = nowdist+1
  end
end

max = 0
goal = []
h.times{|i|
  w.times{|j|
    if s[i][j] && dist[i][j]>max
      goal = [i,j]
      max = dist[i][j]
    end
  }
}

q = [goal]
dist = h.times.map{[987]*w}
dist[goal[0]][goal[1]] = 0
while q.size!=0
  now = q.pop
  y,x = now
  nowdist = dist[y][x]
  if y+1<h && s[y+1][x] && dist[y+1][x]>nowdist+1
    q << [y+1,x]
    dist[y+1][x] = nowdist+1
  end
  if y-1>=0 && s[y-1][x] && dist[y-1][x]>nowdist+1
    q << [y-1,x]
    dist[y-1][x] = nowdist+1
  end
  
  if x+1<w && s[y][x+1] && dist[y][x+1]>nowdist+1
    q << [y,x+1]
    dist[y][x+1] = nowdist+1
  end
  if x-1>=0 && s[y][x-1] && dist[y][x-1]>nowdist+1
    q << [y,x-1]
    dist[y][x-1] = nowdist+1
  end
end

max = 0
h.times{|i|
  w.times{|j|
    if dist[i][j]>max && s[i][j]
      max = dist[i][j]
    end
  }
}

p max