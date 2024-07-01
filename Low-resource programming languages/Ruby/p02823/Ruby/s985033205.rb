n, a, b = gets.split.map(&:to_i)

d = b - a
if d.even?
  puts d / 2
else
  puts [n - b, a - 1].min + 1 + (d - 1) / 2
end
