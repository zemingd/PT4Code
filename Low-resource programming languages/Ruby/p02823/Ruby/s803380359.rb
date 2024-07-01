n, a, b = gets.split.map(&:to_i)

if (b - a).even?
  puts (b - a) / 2
else
  puts [a + (b - a + 1) / 2, n - b + 1 + (a + (n - b + 1) + n) / 2].min
end
