h,w = gets.split(' ').map(&:to_i)

n = h*w
i = 1
count = 0

n.times do

	count += 1 if i.odd?
	i += 1
	
end

puts count