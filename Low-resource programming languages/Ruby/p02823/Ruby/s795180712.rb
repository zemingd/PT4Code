n, a, b = gets.split.map(&:to_i)
if (b - a) % 2 == 0
  puts (b - a) / 2
else
  puts [a + (b - a - 1) / 2, n - b + 1 + (b - a - 1) / 2].min
end
