a,b,c,d = gets.chomp.split.map(&:to_i)

if b > d
  puts d - c
elsif b - c > 0
  puts (b - c)
else
  puts 0
end
