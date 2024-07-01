gets.to_i.times  do
	a = gets.to_i + gets.to_i

	if(a.to_s.size > 80 ) 
		puts "overflow"
	else 
		puts a
	end
end