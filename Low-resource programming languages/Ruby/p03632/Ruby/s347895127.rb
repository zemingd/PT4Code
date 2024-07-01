a,b,c,d = gets.split.map(&:to_i)
if a > c && b < d
    puts b - a
elsif a < c && b > d
    puts d - c
elsif d > b && a < c
    puts b - c
elsif d < b && a > c
    puts d - a
end