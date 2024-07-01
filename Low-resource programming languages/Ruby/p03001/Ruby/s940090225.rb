w, h, x, y = gets.split.map(&:to_i)
area = w.to_f * h.to_f / 2.0
center = (2 * x == w && 2 * y == h) ? 1 : 0
puts("#{area} #{center}")
