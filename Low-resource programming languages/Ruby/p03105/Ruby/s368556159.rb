x, y, z = gets.chop.split.map(&:to_i)

if y/x < 1
    puts 0
elsif y/x >= z
    puts z
elsif  y/x < z
    puts y/x
end