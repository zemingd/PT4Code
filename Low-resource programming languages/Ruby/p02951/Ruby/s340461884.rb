a_limit, a, b = gets.split(" ").map(&:to_i)
a_nokori = a_limit - a
b_nokori = b - a_nokori

if b_nokori < 0
    puts 0
else
    puts b_nokori
end