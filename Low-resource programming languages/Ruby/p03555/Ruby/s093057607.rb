upper = gets.chomp
lower = gets.chomp

if upper[0] == lower[2] && upper[1] == lower[1] && upper[2] == lower[0]
  puts 'YES'
else
  puts 'NO'
end