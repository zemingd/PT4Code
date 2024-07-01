a, b = gets.split(' ').map(&:to_i)

if a >= 13
  puts b
elsif a <= 12 && 6 <= a
  puts b / 2
else
  puts 0
end
