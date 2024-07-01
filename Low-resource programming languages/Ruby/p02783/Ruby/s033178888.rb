h,a = gets.split(' ').map(&:to_i)
count = 0

until h <= 0
	h = h - a
	count += 1
end

puts count