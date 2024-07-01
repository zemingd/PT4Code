#!/usr/bin/env ruby -wKU

n = gets.to_i
out = Array.new
(n+1).times do |x|
	if x == 0
	elsif x % 3 == 0
		out << x
	elsif x % 10 == 3
		out << x
	elsif x == n
		out << x
	end
end

print out.join(" ")