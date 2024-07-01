n, m = gets.split.map(&:to_i)

l, r = m.times.map do
  gets.split.map(&:to_i)
end.transpose

puts [(r.min - l.max) + 1, 0].max
