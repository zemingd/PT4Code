x, a, b = gets.split.map(&:to_i)
if b - a <= 0
  puts 'delicious'
elsif b - a <= x
  puts 'safe'
else
  puts 'dangerous'
end