a, b = gets.split(" ")
new_number = (a + b).to_i

sqrted_number = Integer.sqrt(new_number)

if sqrted_number ** 2 == new_number 
	puts "Yes"
else
  puts "No"
end