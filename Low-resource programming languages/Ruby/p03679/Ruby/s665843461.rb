x, a, b = gets.chomp.split(' ').map(&:to_i)
if a > b
  puts 'delicious'
elsif (a + x) > b
  puts 'safe'
elsif (a + (x + 1)) >= b
  puts 'dangerous'
end
