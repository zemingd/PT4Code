s = gets.chomp
count = 0
while s.split('').uniq.count > 1 
	i = 0
	while i != s.length - 1
		tmp = s[i..(i+1)]
		if tmp == "01"
			count += 2
		end
		i += 1
	end
	s.gsub!(/01/, "")
	break if s.split('').uniq.count <= 1

	i = 0
	while i != s.length - 1
		tmp = s[i..(i+1)]
		if tmp == "10"
			count += 2
		end
		i += 1
	end
	s.gsub!(/10/, "")
end
puts count