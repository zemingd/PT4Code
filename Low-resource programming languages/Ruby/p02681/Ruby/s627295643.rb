str1 = gets.to_s.chomp
str2 = gets.to_s.chomp
ans = "Yes"
(str1.length).times do |i|
	if str1[i] != str2[i]
		ans ="No"
	end
end

puts ans