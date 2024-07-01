a, b, c = gets.split.map(&:to_i)
if a <= c && c <= b
  puts 'YES'
else
  puts 'NO'
end
