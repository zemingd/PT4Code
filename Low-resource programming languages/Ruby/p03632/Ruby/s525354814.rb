a, b, c, d = gets.chomp.split(' ').map(&:to_i)
if b < c || d < a
  puts 0
else
  puts [b, d].min - [a, c].max
end
