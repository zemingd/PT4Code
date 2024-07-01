h, w = gets.chomp.split.map(&:to_i)
s = []

h.times do
  s << gets.chomp.chars
end

ans = 0

h.times do |i|
  w.times do |j|
    next if s[i][j] == '#'
    queue = []
    visited = Array.new(h).map { Array.new(w, 0)}
    queue << [i, j, 0]
    visited[i][j] = 1
    # スコアを保持
    # scores = Array.new(h).map { Array.new(w, 0)}

    until queue.empty?
      x, y, cnt = queue.shift
      # p "現在のx,y: #{[x , y]}"



      [[x, y + 1], [x, y - 1 ], [x + 1, y], [x - 1 , y]].each do |dx, dy|
        next if (dx < 0) || (dy < 0) || (dx + 1 > h) || (dy + 1 > w)
        next if s[dx][dy] == '#' || visited[dx][dy] == 1

        visited[dx][dy] = 1
        queue << [dx, dy, cnt + 1]
        ans = [ans, cnt + 1].max
      end
    end

    # スコア表示
    # p scores
  end
end

p ans
