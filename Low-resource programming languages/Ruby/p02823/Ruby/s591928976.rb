n, a, b = gets.split.map(&:to_i)

puts (b - a) / 2 if (b - a).even?

if 1 - a <= n - b
  puts b
else
  puts n - a
end