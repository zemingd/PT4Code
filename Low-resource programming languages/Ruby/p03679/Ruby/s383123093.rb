x, a, b = gets.chomp.split.map(&:to_i)
if b - a >= x + 1
  puts 'dangerous'
elsif b - a > 0
  puts 'safe'
else
  puts 'delicious'
end