A, B, C= gets.split.map(&:to_i)

if B - C * A >= 0
  puts C
else
  puts B/A
end
