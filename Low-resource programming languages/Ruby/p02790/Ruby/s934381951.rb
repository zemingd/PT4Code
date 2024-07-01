a, b = gets.chomp.split(/ /).map(&:to_i)

a_string = b * a
b_string = a * b

if a_string < b_string
  puts a_string
else
  puts b_string
end
