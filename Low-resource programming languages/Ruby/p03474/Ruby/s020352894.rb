A, B = gets.split.map( &:to_i )
S = gets.strip

( A + B + 1 ).times do |i|
	if i == A && S[i] != '-' || i != A && S[i] == '-' then
		puts "No"
		exit( 0 )
	end
end

puts "Yes"
