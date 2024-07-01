x, y = gets.split.map(&:to_i)
if x % 2 == 0 || y % 2 == 0
  puts 'Even'
else
  puts 'Odd'
end