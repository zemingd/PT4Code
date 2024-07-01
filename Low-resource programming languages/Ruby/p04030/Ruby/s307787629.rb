s=gets.chomp
str=""
s.each_char do |chr|
	if chr=="B" then
		if str.length>0 then
			str.chop!
		end
	else
		str << chr
	end
end
puts str