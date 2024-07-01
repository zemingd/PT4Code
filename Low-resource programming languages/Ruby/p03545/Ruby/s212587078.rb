S = gets.strip
SIGNS = [ '+', '-' ]

SIGNS.each do |a|
	SIGNS.each do |b|
		SIGNS.each do |c|
			s = S.dup.insert( 3, a ).insert( 2, b ).insert( 1, c )
			if eval( s ) == 7 then
				puts s + "=7"
				exit 0
			end
		end
	end
end

exit 1
