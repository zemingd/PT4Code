#! ruby -Ku

str = "No"

num = gets.chomp

("0".."9").each do |n|
	check = ""
	3.times do
		check << n
	end
	str = "Yes" if num.include?(check)
end

puts str