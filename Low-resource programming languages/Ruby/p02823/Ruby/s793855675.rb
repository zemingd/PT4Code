n, a, b = gets.split.map(&:to_i)
if (b - a).even?
  puts (b - a) / 2
else
  puts [(a + b - 1) / 2, (2 * n - a - b + 1) / 2].min
end
