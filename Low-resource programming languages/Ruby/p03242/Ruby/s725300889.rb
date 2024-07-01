n = gets.chomp.split("")

n.each{ |i|
	if i == '9' then
		print '1'
	elsif i == '1' then
		print '9'
	else
		print i
	end
}
puts
