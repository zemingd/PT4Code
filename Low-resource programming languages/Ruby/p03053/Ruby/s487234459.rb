h, w = gets.split.map(&:to_i)
a = Array.new(h) { [0] * w }
q = []
h.times do |i|
  gets.chomp.each_char.with_index do |c, j|
    next if c == "."
    a[i][j] = 1
    q << [i, j, 0]
  end
end
ans = 0
visited = Array.new(h) { Array.new(w) }
d = [[-1, 0], [1, 0], [0, 1], [0, -1]]
until q.empty?
  i, j, cnt = q.shift
  next if visited[i][j]
  visited[i][j] = true
  ans = cnt if cnt > ans
  d.each do |di, dj|
    ni, nj = i + di, j + dj
    next if ni < 0 || ni > h - 1 || nj < 0 || nj > w - 1 || visited[ni][nj]
    q << [ni, nj, cnt + 1] if a[ni][nj] == 0
  end
end

p ans
