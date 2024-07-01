x,y = gets.split(/ /).map(&:to_i)
if x == 1 || y == 1
  puts 1
else
  puts (x * y + 1) / 2
end