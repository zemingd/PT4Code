h, w = gets.strip.split.map(&:to_i)

aa = Array.new(h) { [0]*w }
dist = Array.new(h) { [-1]*w }
q = []

counter=0
h.times do |i|
  gets.chomp.each_char.with_index do |c,j|
    next if c == '.'
    aa[i][j] = 1
    q << [i, j]
    dist[i][j]=0
    counter+=1
  end
end

result = 0
until counter == h*w
  cy, cx = q.shift

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
