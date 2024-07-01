s = gets.chomp.chars
l = 200000
r = 0
s.each_with_index do |e,i|
	if e == "A" && i < l
		l = i
	end
	if e == "Z" && i > r
		r = i
	end
end
pp r - l + 1
