a,b,c,d = gets.split.map(&:to_i)
if a > c && b < d
    puts b - a
elsif a < c && b > d
    puts d - c
elsif b - c <= 0
  puts 0
else
  puts b - c
end