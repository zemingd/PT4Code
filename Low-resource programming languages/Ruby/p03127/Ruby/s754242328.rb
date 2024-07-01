n = gets.to_i
a = gets.split(' ').map(&:to_i)

flag = 0
a.delete(0)
min = a.min
while !(a.uniq.count == 1)
	break if min == 1
	a = a.map do |i|
		if i == min && flag == 0
			i
			flag = 1
		else
			i % min
		end
	end
	#p a
	a.delete(0)
	min = a.min if a.min < min
end

puts min