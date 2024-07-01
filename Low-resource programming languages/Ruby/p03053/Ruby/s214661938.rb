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
  cy, cx = q.shift


  if cy+1 < h && aa[cy+1][cx]==0 && dist[cy+1][cx] > dist[cy][cx]+1
    dist[cy+1][cx] = dist[cy][cx]+1
    aa[cy][cx]=1
    q.push([cy+1, cx])
  end

  if cy-1>= 0 && aa[cy-1][cx]==0 && dist[cy-1][cx] > dist[cy][cx]+1
    dist[cy-1][cx] = dist[cy][cx]+1
    aa[cy-1][cx]=1
    q.push([cy-1, cx])
  end

  if cx-1 >= 0 && aa[cy][cx-1]==0 && dist[cy][cx-1] > dist[cy][cx]+1
    dist[cy][cx-1] = dist[cy][cx]+1
    aa[cy][cx-1]=1
    q.push([cy, cx-1])
  end

  if cx+1 < w && aa[cy][cx+1]==0 && dist[cy][cx+1] > dist[cy][cx]+1
    dist[cy][cx+1] = dist[cy][cx]+1
    aa[cy][cx+1]=1
    q.push([cy, cx+1])
  end
end

p dist.flatten.max
