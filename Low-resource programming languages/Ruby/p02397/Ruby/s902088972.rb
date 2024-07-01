num = []
loop do
	str = gets.chomp

	if str == '0 0' then
		break
	else
		num << str
	end
end

num.map do |n|
	x = n.split(' ')[0]
	y = n.split(' ')[1]

	if x < y then
		puts x + ' ' + y
	else
		puts y + ' ' + x
	end
end