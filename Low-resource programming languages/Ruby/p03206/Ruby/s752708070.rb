REFERENCE_VALUE = 25

char = "Chrismas "
add_char = "Eve "
num = gets.to_i

(25 - num).abs.times do
  char = char + add_char
end

puts char
