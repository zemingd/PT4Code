a, b = gets.strip.split.map(&:to_i)
if a <= b
  puts a
else
  puts a - 1
end