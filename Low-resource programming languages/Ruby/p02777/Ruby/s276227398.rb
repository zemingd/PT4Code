a, b = gets.split
c_a, c_b = gets.split.map(&:to_i)

if a == gets.chomp
    c_a -= 1
else
    c_b -= 1
end

puts [c_a, c_b].join(" ")
