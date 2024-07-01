a,b,c = gets.split.map(&:to_i)
i = a
cnt = 0
while i<=b
	if ( c % i == 0 )
		cnt += 1
	end

	i += 1
end

puts cnt