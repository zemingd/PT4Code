str1 = gets.chomp.split("").sort!
str2 = gets.chomp.split("").sort!

f = 0
str1.size.times do |i|
	if str2.size-1 < i
		puts "No"
		f = 1
		break
	end
	if str2[i]>str1[i]
		puts "Yes"
		f = 1
		break
	elsif str2[i]==str1[i]
		next
	else
		puts "No"
		f = 1
		break
	end
end
if f==0
	puts "No"
end