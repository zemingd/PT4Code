n, a, b = gets.split.map(&:to_i)

if (b - a).even?
  puts (b - a) / 2
else
  puts [n - b, a - 1].min + 1 + (b - a - 1) / 2
end
