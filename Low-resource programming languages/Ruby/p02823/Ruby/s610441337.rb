n, a, b = gets.split.map(&:to_i)

diff = (a-b).abs
if diff.even?
  puts diff / 2
else
  puts [b - 1, n - a].min
end

