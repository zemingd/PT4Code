n, a, b = gets.split.map(&:to_i)

if (b - a).even?
  puts (b - a) / 2
else
  puts [a - 1 + 1 + (1 + b - a - 2) / 2, n - b + 1 + (n - (a + (n - b + 1))) / 2, b - 1, n - a].min
end
