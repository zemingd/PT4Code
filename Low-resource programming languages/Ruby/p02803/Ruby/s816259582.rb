$h, $w = gets.split.map(&:to_i)
$s = []
$h.times do
  $s << gets.chomp
end
$d = [[0, 1], [0, -1], [1, 0], [-1, 0]]

def bfs(sx, sy)
  bfs_map = Array.new($h) { Array.new($w, Float::INFINITY) }
  bfs_map[sy][sx] = 0
  q = []
  q << [sy, sx, 0]
  res = 0

  until q.empty?
    y, x, dist = q.shift
    $d.each do |dy, dx|
      ny = y + dy
      nx = x + dx
      next unless nx >= 0 && nx < $w && ny >= 0 && ny < $h && $s[ny][nx] != "#"
      if bfs_map[ny][nx] > dist + 1
        bfs_map[ny][nx] = dist + 1
        res = dist + 1 if dist + 1 != Float::INFINITY && dist + 1 > res
        q << [ny, nx, dist + 1]
      end
    end
  end
  # res = 0
  # bfs_map.each do |row|
  #   row.each do |c|
  #     if c != Float::INFINITY && c > res
  #       res = c
  #     end
  #   end
  # end
  return res
end

ans = -1
$h.times do |sy|
  $w.times do |sx|
    t = bfs(sx, sy)
    ans = t if t > ans
  end
end
p ans
