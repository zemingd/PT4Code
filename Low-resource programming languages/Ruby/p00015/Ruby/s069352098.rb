gets.to_i.times do
	sum =  gets.to_i + gets.to_i
	puts sum.to_s.size > 80 ? "overflow" : sum
end