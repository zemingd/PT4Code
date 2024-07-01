#!/usr/bin/env ruby
# encoding: utf-8

debt = 100
n = gets.chomp.to_i
while n > 0
	debt += debt * 0.05
	debt = debt.ceil
	n -= 1
end
puts debt * 1000