s = gets.chomp.split("")

s = s.sort

if s.join == "abc"
	puts "Yes"
else
	puts "No"
end