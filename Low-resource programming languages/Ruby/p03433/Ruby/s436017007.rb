a = gets.chomp.to_i
b = gets.chomp.to_i
puts a
puts b
if a % 500 > b
  puts "No"
else
  puts "Yes"
end