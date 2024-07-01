a, b = gets.split.map(&:to_i)
if a >= 13
  puts b
elsif a >= 6 && a <= 12
  puts b / 2
elsif a <= 5
  puts puts 0
end