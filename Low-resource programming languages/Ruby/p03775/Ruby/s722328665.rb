n = gets.to_i

half_n = n.Math.sqrt

half_n.ceil.downto(1) do |i|

	next if n % 1 != 0
	puts (n/i).to_s.size
	exit
end