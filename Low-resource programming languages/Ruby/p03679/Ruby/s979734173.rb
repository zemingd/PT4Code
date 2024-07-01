x, a, b = gets.split.map(&:to_i)
if a >= b
  puts 'delicious'
elsif b - a <= x + 1
  puts 'safe'
else
  puts 'dangerous'
end
