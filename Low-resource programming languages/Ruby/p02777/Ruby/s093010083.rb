a, b = gets.split
a_c, b_c = gets.split.map(&:to_i)

if a == gets.chomp
    a_c -= 1
else
    b_c -= 1
end

puts a_c.to_s + " " + b_c.to_s
