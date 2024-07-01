a, b = gets.chomp.split(/ /).map(&:to_i)

a_string = a * b
b_string = b * a

if a_string < b_string
  puts a_string
else
  puts b_string
end
