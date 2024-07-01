a, b, x = gets.chomp.split.map(&:to_i)
if a > x || x > a + b
  puts 'NO'
else
  puts 'YES'
end
