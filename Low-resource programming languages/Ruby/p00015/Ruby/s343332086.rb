n = gets.to_i

n.times do
	sum = gets.to_i + gets.to_i
	puts sum.to_s.size <= 80 ? sum : 'overflow'
end