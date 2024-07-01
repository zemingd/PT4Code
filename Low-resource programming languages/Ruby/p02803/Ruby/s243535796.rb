$h, $w = gets.split.map(&:to_i)
s = []
$h.times do
  s << gets.chomp
end

def bfs(s, sx, sy, gx, gy)
  bfs_map = Array.new($h) { Array.new($w, Float::INFINITY) }
  bfs_map[sy][sx] = 0
  q = []
  q << [sy, sx, 0]
  d = [[0, 1], [0, -1], [1, 0], [-1, 0]]
  until q.empty?
    y, x, dist = q.shift
    d.each do |dy, dx|
      ny = y + dy
      nx = x + dx
      next unless nx >= 0 && nx < $w && ny >= 0 && ny < $h && s[ny][nx] != "#"
      if bfs_map[ny][nx] > dist + 1
        bfs_map[ny][nx] = dist + 1
        q << [ny, nx, dist + 1]
      end
    end
  end
  bfs_map[gy][gx]
end

ans = -1
$h.times do |sy|
  ssy = s[sy]
  $w.times do |sx|
    next if ssy[sx] == "#"
    $h.times do |gy|
      sgy = s[gy]
      $w.times do |gx|
        if sgy[gx] == "."
          tmp = bfs(s, sx, sy, gx, gy)
          ans = tmp if tmp > ans
        end
      end
    end
  end
end
p ans
