#!/usr/bin/env ruby

if __FILE__ == $0 then
	loop do
		s = gets.chomp
		if s == '0' then
			break
		end
		puts s.split('').map(&:to_i).sum
	end
end

