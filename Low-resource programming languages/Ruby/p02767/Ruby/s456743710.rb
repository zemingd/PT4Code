#!/usr/bin/env ruby

n  = STDIN.gets.chomp
x  = STDIN.gets.chomp.split(/\s/).map { |e| e.to_i }

ans = 1000000000
for p in x.min .. x.max do
	cost = 0
	for i in x do
		cost = cost + (p - i)**2
	end
	if ans > cost
		ans = cost
	end
end

puts ans
