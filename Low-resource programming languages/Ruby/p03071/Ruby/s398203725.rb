a, b = gets.strip.split.map(&:to_i)
if a == b
  puts a + b
else
  ary = [a, b].sort.reverse
  puts ary[0] * 2 - 1
end