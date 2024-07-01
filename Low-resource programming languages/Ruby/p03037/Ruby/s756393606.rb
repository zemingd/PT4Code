N,M = gets.chomp.split.map(&:to_i)

from = 1
to = N

M.times do
  l, r = gets.chomp.split.map(&:to_i)
  from = [l, from].max
  to = [r, to].min
end

ans = to - from + 1
puts [ans, 0].max
