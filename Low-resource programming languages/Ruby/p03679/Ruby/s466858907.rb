x, a, b = gets.chomp.split(' ').map(&:to_i)
if a >= b
  puts 'delicious'
else
  if (a + x) >= b
    puts 'safe'
  else
    puts 'dangerous'
  end
end
