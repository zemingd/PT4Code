#!/usr/bin/env ruby

(n, k)  = STDIN.gets.chomp.split(/\s/).map { |e| e.to_i }

ans = 1
num = k
while n >= num do
	num = num * k
	ans = ans + 1
end

puts ans
