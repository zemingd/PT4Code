n = gets.to_i
n.times do
	a = gets.to_i + gets.to_i
	puts (Math.log10(a) > 80) ? 'overflow' : a
end