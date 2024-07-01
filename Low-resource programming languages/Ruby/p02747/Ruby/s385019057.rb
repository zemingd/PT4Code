def hi?(s)
	l = s.length
	if l%2 == 1 then return "No" end
	l /= 2
	0.upto(l-1) do |i|
		if s[2*i]!="h" || s[2*i+1]!="i" then
			return "No"
		end
	end
	return "Yes"
end

#n, prime = gets.chomp.split(" ").map{|e|e.to_i}
s = gets.chomp

print(hi?(s))


