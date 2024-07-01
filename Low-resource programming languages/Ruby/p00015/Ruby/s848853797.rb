gets.to_i.times do
	n1,n2 = gets.chomp.to_i, gets.chomp.to_i
	sum = n1+n2
	if sum.to_s.length > 80 then
		puts "overflow"
	else
		puts sum
	end
end