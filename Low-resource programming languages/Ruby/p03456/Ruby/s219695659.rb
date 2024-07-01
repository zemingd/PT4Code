a, b = gets.split(" ")
new_number = (a + b).to_i

sqrted_number = Math.sqrt(new_number).floor


if sqrted_number ** 2 == new_number 
	puts "Yes"
else
  puts "No"
end