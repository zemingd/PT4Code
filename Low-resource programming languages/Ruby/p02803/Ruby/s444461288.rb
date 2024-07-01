# frozen_string_literal: true

h, w = gets.split.map(&:to_i)
s = []

h.times do |i|
  s[i] = gets.chomp.chars
  s[i] << nil
end
s << Array.new(w) { nil }

move = [[1, 0], [0, 1], [-1, 0], [0, -1]]
max = 0

h.times do |i|
  w.times do |j|
    next if s[i][j] == '#'

    dist = Array.new(h) { Array.new(w) { -1 } }
    dist[i][j] = 0
    queue = [[i, j]]

    while queue.any?
      pt = queue.shift
      pred_x = pt[0]
      pred_y = pt[1]

      move.each do |m|
        x = pred_x + m[0]
        y = pred_y + m[1]
        succ = s[x][y]

        next if succ == '#' || succ.nil?
        next if dist[x][y] != -1

        dist[x][y] = dist[pred_x][pred_y] + 1

        max = dist[x][y] if max < dist[x][y]
        queue << [x, y]
      end
    end
  end
end

puts max