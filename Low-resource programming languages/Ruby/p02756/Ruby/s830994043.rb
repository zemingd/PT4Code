s = gets.chomp
q = gets.chomp.to_i

q.times do 
	n = gets.chomp.split(" ")
	if n[0].to_i == 1 then
		s = s.reverse
	else
		if n[1].to_i == 1 then
			s = n[2] << s
		else
			s = s << n[2]
		end
	end
end

print(s)