num = []
loop do
	x = gets.chomp.to_i

	if x == 0 then
		break
	else
		num << x
	end
end

i = 1
num.map do |x|
	if x != 0
		puts 'Case ' + i.to_s + ': ' + x.to_s
	else
		break
	end	

 i += 1
end