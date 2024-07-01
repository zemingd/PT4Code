h,w = gets.split.map(&:to_i)
s = h.times.map{gets.split("").map{|c|c=="."}}

max = -1
h.times{|i|
w.times{|j|
next if !s[i][j]
q = [[i,j]]
dist = h.times.map{[987]*w}
dist[i][j] = 0
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
h.times{y|
  w.times{|x|
    max = dist[y][x] if s[y][x] && max<dist[y][x]
  }
}

}
}

p max