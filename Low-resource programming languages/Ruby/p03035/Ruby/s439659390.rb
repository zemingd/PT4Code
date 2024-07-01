a, b = gets.split.map(&:to_i)
if a > 12
  puts b
elsif a >= 5
  puts b / 2
else
  puts 0
end