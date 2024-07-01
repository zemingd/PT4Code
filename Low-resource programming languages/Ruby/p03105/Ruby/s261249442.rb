a, b, c = gets.strip.split.map(&:to_i)
if a * c <= b
  puts c
else
  puts b / a
end