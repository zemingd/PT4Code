n = gets.split.map(&:to_i)
if n % 4 == 0
  puts 'YES'
else
  puts 'NO'
end