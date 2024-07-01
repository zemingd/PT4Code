x, a, b = gets.split.map &:to_i
if a-b >= 0
  puts 'delicious'
elsif x+a >= b
  puts 'safe'
else
  puts 'dangerous'
end
  
