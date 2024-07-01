n, a, b = gets.split.map(&:to_i)
if (b - a) % 2 == 0
  puts (b - a) / 2
else
  puts [b - 1, n - a].min
end
