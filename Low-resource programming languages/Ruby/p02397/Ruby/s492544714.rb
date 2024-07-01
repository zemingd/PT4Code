num = []
loop do
	str = gets.chomp

	if str == "0 0" then
		break
	else
		num << str
	end
end

num.map do |n|
	x = n.split(' ')[0]
	y = n.split(' ')[1]

	if x > y then
		puts "#{y} #{x}"
	else
		puts "#{x} #{y}"
	end
end