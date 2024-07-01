H, W = gets.split(' ').map(&:to_i)
str = $stdin.read
map = Array.new(H + 2) do |h|
  if h == 0 || h == W + 1
    Array.new(W+2, -2)
  else
    Array.new(W+2) do |w|
      (w == 0 || w == W + 1) ? -2 : -1
    end
  end
end
blacks = []
result = 0
dxy = [[0,1],[0,-1],[1,0],[-1,0]]
index = 0
BYTE_BLACK = "#".getbyte(0)
i = 0
str.bytes do |byte|
  if byte == BYTE_BLACK
    h = i / (W + 1) + 1
    w = i % (W + 1) + 1
    map[h][w] = 0
    blacks.push([h, w, 0])
  end
  i += 1
end
while(q = blacks.shift) do
  h, w, dis = q
  4.times do |i|
    y, x = h + dxy[i][0], w + dxy[i][1]
    next unless map[y][x] == -1
    result = dis + 1
    map[y][x] = result
    blacks.push [y,x, result]
  end
end
puts result