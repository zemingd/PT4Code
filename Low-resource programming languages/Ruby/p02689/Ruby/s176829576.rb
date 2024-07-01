# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ab = m.times.map { gets.split.map(&:to_i) }

d = Array.new(n) { [] }

ab.each do |e|
  a = e[0] - 1
  b = e[1] - 1
  d[a].push b
  d[b].push a
end
count = 0
d.each_with_index do |e, i|
  count += 1 if e.all? { |f| h[f] < h[i] }
end
puts count
