size = gets.to_i
size.times {|s|
	data1 = gets.to_i
	data2 = gets.to_i
	if (data1+data2).to_s.length >= 80 then
		p 'overflow'
	else
		p (data1+data2).to_s
	end
}