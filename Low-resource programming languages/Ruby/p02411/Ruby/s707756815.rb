#!/usr/bin/env ruby

if __FILE__ == $0 then
	loop do
		m, f, r = gets.split.map(&:to_i)

		if [m, f, r] == [-1, -1, -1] then
			break
		end

		if m == -1 or f == -1 then
			puts 'F'
		else
			puts begin
				case m+f
				when 80..100 then 'A'
				when 65..80 then 'B'
				when 50..65 then 'C'
				when 30..50 then
					if r >= 50
						'C'
					else
						'D'
					end
				else 'F'
				end
			end
		end
	end
end

