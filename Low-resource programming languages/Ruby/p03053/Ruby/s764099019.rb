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
# dxy = [[0,1],[1,0],[0,-1],[-1,0]]
BYTE_BLACK = "#".getbyte(0)
BYTE_DOT = ".".getbyte(0)
i = 0
str.bytes do |byte|
  if byte == BYTE_BLACK
    h = (i / W) + 1
    w = (i % W) + 1
    if h == H+1
      raise
    end
    map[h][w] = 0
    blacks.push([h, w])
    i += 1
  elsif byte == BYTE_DOT
    i += 1
  end
end

while(q = blacks.shift) do
  begin
    h, w = q
    result = map[h][w]
    if map[h+1][w] == -1
      map[h+1][w] = map[h][w] + 1
      blacks.push([h+1,w])
    end
    if map[h-1][w] == -1
      map[h-1][w] = map[h][w] + 1
      blacks.push([h-1,w])
    end
    if map[h][w+1] == -1
      map[h][w+1] = map[h][w] + 1
      blacks.push([h,w+1])
    end
    if map[h][w-1] == -1
      map[h][w-1] = map[h][w] + 1
      blacks.push([h,w-1])
    end
    # この書き方だとだいぶ遅くなる
    # 4.times do |i|
    #   y, x = h + dxy[i][0], w + dxy[i][1]
    #   next unless map[y][x] == -1
    #   result = map[h][w] + 1 if result >= map[h][w]
    #   map[y][x] = result
    #   blacks.push [y,x]
    # end
  rescue NoMethodError => e
  end
end
puts result