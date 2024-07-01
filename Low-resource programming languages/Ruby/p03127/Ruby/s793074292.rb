n = gets.to_i
a = gets.split(' ').map(&:to_i)


a.delete(0)
min = a.min
while !(a.uniq.count == 1)
	break if min == 1
	flag = 0
	#p a
	a = a.map do |i|
		if i == min && flag == 0
			flag = 1
			i
		else
			i % min
		end
	end
	#p a
	a.delete(0)
	min = a.min if a.min < min
end

puts min