x, a, b = gets.split().map(&:to_i)
c = b - a
if c <= x
  if b <= a
    puts 'delicious'
  else
    puts 'safe'
  end
else
  puts 'dangerous'
end
