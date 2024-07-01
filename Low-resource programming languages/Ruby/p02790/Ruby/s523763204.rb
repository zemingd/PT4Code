a, b = gets.chomp.split(/ /).map(&:to_i)

a_string = 1.upto(b).map { a }.join("")
b_string = 1.upto(a).map { b }.join("")
if a_string < b_string
  puts a_string
else
  puts b_string
end
