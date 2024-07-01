a, b, c, d = gets.chomp.split(' ').map(&:to_i)

if a == c && b == d
  puts c - a
elsif c >= b || d <= a
  puts 0
elsif c < b && b < d
  puts b - c
elsif c < b && b > d
  puts d - c
elsif a < d && d < c
  puts d - a
else
  puts c - a
end
