h, w = $stdin.readline.chomp.split.map(&:to_i)
dp = Array.new(h) { Array.new(w) }
q = []
h.times do |i|
  a = $stdin.readline.chomp.chars
  w.times do |j|
    if a[j] == "#"
      q << [i, j]
      dp[i][j] = 0
    end
  end
end

d = [[0, -1], [0, 1], [-1, 0], [1, 0]]
while !q.empty?
  x, y = q.pop
  d.each do |dx, dy|
    nx = x + dx
    ny = y + dy
    next if nx < 0 || nx >= h || ny < 0 || ny >= w
    next if !dp[nx][ny].nil?

    dp[nx][ny] = dp[x][y] + 1
    q.unshift([nx, ny])
  end
end
puts dp.flatten.max