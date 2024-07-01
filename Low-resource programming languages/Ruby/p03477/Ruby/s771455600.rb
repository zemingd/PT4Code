a, b, c, d = gets.split.map(&:to_i)
case a + b <=> c + d
when 1
  puts 'Left'
when -1
  puts 'Right'
else
  puts 'Balanced'
end