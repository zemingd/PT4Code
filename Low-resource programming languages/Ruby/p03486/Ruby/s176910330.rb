str1 = gets.chomp.split("").sort!.join("")
str2 = gets.chomp.split("").sort.reverse!.join("")

if str1 < str2
	puts "Yes"
else
	puts "No"
end