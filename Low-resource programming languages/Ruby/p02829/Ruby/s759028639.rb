A = gets.to_i
B = gets.to_i

if !([A, B].include?(1))
    puts 1
elsif !([A, B].include?(2))
    puts 2
else
    puts 3
end

