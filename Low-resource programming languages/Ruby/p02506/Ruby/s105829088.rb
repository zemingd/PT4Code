# coding: utf-8?\

ans = gets.chomp.downcase
count = 0
while (str = gets.chomp) != "END_OF_TEXT"
	str.downcase.split(" ").each do |i|
		if i == ans
			count += 1
		end
	end
end
puts count