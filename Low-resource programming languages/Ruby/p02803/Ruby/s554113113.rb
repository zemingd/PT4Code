h, w = gets.chop.split.map(&:to_i)

s = []

h.times {
  c = gets.chop.chars
  c << nil
  s.push(c)
}

s << nil


move = [[-1, 0], [0, 1], [1, 0], [0, -1]]
max = 0


h.times do |i|
  w.times do |j|
    next if s[i][j] == '#'

    dist = Array.new(h) { Array.new(w) { -1 } }
    dist[i][j] = 0
    queue = [[i, j]]

    while queue.any?
      q = queue.shift
      x = q[0]
      y = q[1]

      move.each do |m|
        pro_x = x + m[0]
        pro_y = y + m[1]

        next if s[pro_x] == nil || s[pro_x][pro_y] == '#'
        next if dist[pro_x][pro_y] != -1

        dist[pro_x][pro_y] = dist[x][y] + 1
        max = dist[pro_x][pro_y] if max < dist[pro_x][pro_y]

        queue.push([pro_x, pro_y])
      end
    end
  end
end

puts max
