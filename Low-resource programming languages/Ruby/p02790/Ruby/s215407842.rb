a, b = gets.chomp.split(/ /)

a_string = a * b.to_i
b_string = b * a.to_i

if a_string < b_string
  puts a_string
else
  puts b_string
end