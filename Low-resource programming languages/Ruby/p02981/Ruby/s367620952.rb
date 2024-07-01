n, a, b = gets.split.map(&:to_i)

if n * a <= b
  puts n * a
else
  puts b
end