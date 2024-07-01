n, a, b = gets.split.map(&:to_i)
if (b - a) <= 0
  puts 'delicious'
elsif (b - a) - n >= 0
  puts 'dangerous'
else
  puts 'safe'
end