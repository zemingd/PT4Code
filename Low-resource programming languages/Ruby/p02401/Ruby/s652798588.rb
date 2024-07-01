#!/usr/bin/env ruby

if __FILE__ == $0
	loop do
		a, op, b = gets.split
		if op == '?' then
			break
		end

		a, b = [a, b].map { |x| x.to_i }
		puts op!='+' ? op!='-' ? op!='*' ? a/b : a*b : a-b : a+b
	end
end

