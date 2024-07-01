n, m = gets.split.map(&:to_i)
from = 1
to = n
m.times do
  f, t = gets.split.map(&:to_i)
  from = [from, f].max
  to = [to, t].min
end

puts to >= from ? (to - from + 1) : 0