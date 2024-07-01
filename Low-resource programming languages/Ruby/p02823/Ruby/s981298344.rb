n, a, b = gets.split.map(&:to_i)

if (b - a).even?
  puts (b - a) / 2
elsif 1 - a <= n - b
  puts b - 1
else
  puts n - a
end