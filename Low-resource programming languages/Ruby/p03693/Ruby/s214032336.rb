r, g, b = gets.split.map(&:to_i)

if (g * 10 + b) % 4 == 0
  puts 'YES'
else
  puts 'NO'
end