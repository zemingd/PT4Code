_, m = gets.split.map(&:to_i)
rs   = m.times.map { gets.split.map(&:to_i) }
_, t = rs.sort_by { |a, b| b }.reduce([0, 0]) do |x, y|
  n, c = x
  a, b = y
  a < n ? [n, c] : [b, c + 1]
end
p t
