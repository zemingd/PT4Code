#!/usr/bin/env ruby -wKU

n = gets.to_i
out = Array.new
(n+1).times do |x|
	i = x
	if x == 0
	elsif x % 3 == 0
		out << x
	elsif x % 10 == 3
		out << x
	elsif x == n
		out << x
	else
		while x > 0
			if x % 10 == 3
				out << i
				break
			end
			x /= 10
		end
	end
end

puts out.join(" ")