#!/usr/bin/env ruby
# encoding: utf-8

while line = gets
	n = line.to_i
	a = 0
	result = 0
	while a < 10
		b = 0
		while b < 10
			c = 0
			while c < 10
				d = 0
				while d < 10
					if n == a + b + c + d
						result += 1
					end
					d += 1
				end
				c += 1
			end
			b += 1
		end
		a += 1
	end
	puts result
end