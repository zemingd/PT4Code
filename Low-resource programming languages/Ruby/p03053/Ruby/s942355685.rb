h, w = gets.strip.split.map(&:to_i)

aa = Array.new(h) { [0]*w }
targets = []

h.times do |i|
  gets.chomp.each_char.with_index do |c,j|
    next if c == '.'
    aa[i][j] = 1
    targets << [i, j]
  end
end

INF = 10**4
dist = Array.new(h) { [INF]*w }
targets.each do |y,x|
  dist[y][x]=0
end

q = targets
until q.empty?
  cy, cx = c = q.shift

  x=cx
  if (y = cy+1) < h && aa[y][x]==0
    dist[y][x] = dist[cy][cx]+1
    aa[y][x]=1
    q.push([y, x])
  end

  if (y = cy-1) >= 0 && aa[y][x]==0
    dist[y][x] = dist[cy][cx]+1
    aa[y][x]=1
    q.push([y, x])
  end

  y=cy
  if (x = cx-1) >= 0 && aa[y][x]==0
    dist[y][x] = dist[cy][cx]+1
    aa[y][x]=1
    q.push([y, x])
  end

  if (x = cx+1) < w && aa[y][x]==0
    dist[y][x] = dist[cy][cx]+1
    aa[y][x]=1
    q.push([y, x])
  end
end

p dist.flatten.max
