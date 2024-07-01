h, w = gets.chomp.split.map(&:to_i)
s = Array.new(h) { gets.chomp }
res = 0

h.times do |i|
  w.times do |j|
    next if s[i][j] == "#"

    q = [[i, j]]
    dp = Array.new(h) { Array.new(w, -1) }
    dp[i][j] = 0
    used = Hash.new(false)
    dxy = [[0, 1], [1, 0], [0, -1], [-1, 0]]

    while !q.empty?
      cx, cy = q.shift

      dxy.each do |dx, dy|
        nx = cx + dx
        ny = cy + dy
        next if nx < 0 || nx >= h || ny < 0 || ny >= w
        next if s[nx][ny] == "#"
        next if dp[nx][ny] != -1

        dp[nx][ny] = dp[cx][cy] + 1
        q << [nx, ny]
      end
    end
    res = [res, dp.flatten.max].max
  end
end
puts res