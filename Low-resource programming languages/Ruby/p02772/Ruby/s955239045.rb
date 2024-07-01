n = gets.to_i
as = gets.split.map &:to_i

as.each{ |a|
	if a % 2 == 0 then
		if a % 3 != 0 && a % 5 != 0 then
			puts 'DENIED'
			exit
		end
	end
}

puts 'APPROVED'
