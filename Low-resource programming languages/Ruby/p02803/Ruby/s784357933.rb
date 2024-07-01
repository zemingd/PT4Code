# 18:57-
def bfs(m, sx, sy)
  
  inf = 10 ** 12
  
  h = m.size
  w = m[0].size
  d = Array.new(h){ [inf] * w }
  used = Array.new(h){ [false] * w }
  
  q = [[sx, sy]]
  d[sx][sy] = 0
  
  while q.any?
    
    x, y = q.shift
    cost = d[x][y]
    
    nx = x - 1
    if 0 <= nx && m[nx][y] == 46 && !used[nx][y]
      d[nx][y] = 1 + cost
      used[nx][y] = true
      q << [nx, y]
    end
    nx = x + 1
    if nx < h && m[nx][y] == 46 && !used[nx][y]
      d[nx][y] = 1 + cost
      used[nx][y] = true
      q << [nx, y]
    end
    ny = y - 1
    if 0 <= ny && m[x][ny] == 46 && !used[x][ny]
      d[x][ny] = 1 + cost
      used[x][ny] = true
      q << [x, ny]
    end
    ny = y + 1
    if ny < w && m[x][ny] == 46 && !used[x][ny]
      d[x][ny] = 1 + cost
      used[x][ny] = true
      q << [x, ny]
    end
  end
  # p d
  res = d.flatten.uniq.sort[-2..-1]
  res[-1] == inf ? res[-2] : res[-1]
end

h, w = gets.to_s.split.map{|t|t.to_i}
a = Array.new(h){ gets.to_s.chomp.bytes }

ans = 0
h.times do |sx|
  w.times do |sy|
    next if a[sx][sy] == 35
    t = bfs(a, sx, sy) #if a[sx][sy] == 46
    ans = t if ans < t
  end
end

puts ans