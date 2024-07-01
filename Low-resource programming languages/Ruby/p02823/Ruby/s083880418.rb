n, a, b = gets.split.map(&:to_i)

diff = (a-b).abs
if diff.even?
  puts diff / 2
else
  near_dist = [a - 1, n - b].min
  puts near_dist + diff / 2 + 1
end

