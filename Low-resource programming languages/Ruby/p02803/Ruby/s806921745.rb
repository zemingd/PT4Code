h, w = gets.split.map(&:to_i)
field = h.times.map { gets.chomp.chars }

d = Array.new(h * w) {
  Array.new(h * w) {
    Float::INFINITY
  }
}

field.each_with_index do |row, y|
  row.each_with_index do |c, x|
    next unless c == '.'

    d[y * w + x][y * w + x] = 0

    [[-1, 0], [0, -1], [0, 1], [1, 0]].each do |dx, dy|
      ax = x + dx
      ay = y + dy
      next unless 0 <= ax && ax < w && 0 <= ay && ay < h
      next unless field[ay][ax] == '.'

      d[y * w + x][ay * w + ax] = 1
      d[ay * w + ax][y * w + x] = 1
    end
  end
end

n = h * w - 1
0.upto(n) do |k|
  0.upto(n) do |i|
    0.upto(n) do |j|
      d[i][j] = [d[i][j], d[i][k] + d[k][j]].min
    end
  end
end

puts d.flatten.reject { |i| i == Float::INFINITY }.max
