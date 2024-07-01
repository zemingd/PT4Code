a, b, c, d = gets.split.map(&:to_i)
if d <= a || b <= c
  puts 0
else
  if a <= c && d <= b
    puts d - c
  elsif c <= a && d <= b
    puts d - a
  elsif a <= c && b <= d
    puts b - c
  end
end
