n, a, b = gets.split.map(&:to_i)

if (a - b).even?
  puts (a - b) / 2
else
  puts [n - a, b - 1].min
end
