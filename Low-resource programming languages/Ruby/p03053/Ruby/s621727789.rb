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

dist = Array.new(h) { [-1]*w }
targets.each do |y,x|
  dist[y][x]=0
end

q = targets
result = 0
until q.empty?
  cy, cx = c = q.shift

  nc = dist[cy][cx]+1

  x=cx
  if (y = cy+1) < h && dist[y][x] == -1
    result = nc if nc > result
    dist[y][x]=nc
    q.push([y, x])
  end

  if (y = cy-1) >= 0 && dist[y][x] == -1
    result = nc if nc > result
    dist[y][x] = nc
    q.push([y, x])
  end

  y=cy
  if (x = cx-1) >= 0 && dist[y][x] == -1
    result = nc if nc > result
    dist[y][x] = nc
    q.push([y, x])
  end

  if (x = cx+1) < w && dist[y][x] == -1
    result = nc if nc > result
    dist[y][x] = nc
    q.push([y, x])
  end
end

p result
