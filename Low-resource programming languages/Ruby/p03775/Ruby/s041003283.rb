n = gets.to_i

half_n = n/2

half_n.ceil.downto(1) do |i|

	next unless (n%1) == 0
	puts (n/i).to_s.size
	exit
end