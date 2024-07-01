a, b, c = gets.strip.split.map(&:to_i)
d = (a * 100) + (b * 10) + c

if d % 4 == 0
  puts('YES')
else
  puts('NO')
end