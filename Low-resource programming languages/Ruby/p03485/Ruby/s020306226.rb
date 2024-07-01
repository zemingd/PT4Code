a,b = gets.split(' ').map(&:to_i)

ave = (a + b) / 2
re = (a + b) % 2

unless re == 0
	if re > 0.4
		puts (ave - re)
	else
		puts (ave +(1 - re))
	end
end
