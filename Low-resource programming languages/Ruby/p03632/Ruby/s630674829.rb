a, b, c, d = gets.chomp.split(' ').map(&:to_i)

if a <= c && c < b
  if d < b
    puts d - c
  else
    puts b - c
  end
elsif c <= a && a < d
  if b < d
    puts b - a
  else
    puts d - a
  end
else
  puts 0
end
