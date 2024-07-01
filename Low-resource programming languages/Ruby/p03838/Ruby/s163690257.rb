x,y = gets.split.map(&:to_i)

if x < 0 && y > 0
    puts y + x >= 0 ? 1 + y + x : y - x
elsif x <= y
    puts y - x
elsif x == 0 || y == 0
    puts x == 0 ? 1 - y : 1 + x
elsif x > 0 && y < 0
    puts 1 + (x + y).abs
else
    puts 2 + x - y
end