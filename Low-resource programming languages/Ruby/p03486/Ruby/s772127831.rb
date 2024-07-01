str1 = gets.chomp.split("").sort!
str2 = gets.chomp.split("").sort!

str1.size.times do |i|
	if str2[i]>str1[i]
		puts "Yes"
		break
	elsif str2[i]==str1[i]
		next
	else
		puts "No"
	end
end
