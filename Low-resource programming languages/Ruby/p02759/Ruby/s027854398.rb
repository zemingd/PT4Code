var = gets.to_i

if var % 2 == 0
    puts(var / 2)
else
    puts(((var / 2).floor) + 1)
end