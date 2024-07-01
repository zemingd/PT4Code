require 'prime'
n = gets.to_i
puts gets.chomp.split(' ').map(&:to_i).map { |i| (Prime.prime_division(i).find { |j, _| j == 2 } || [0]).last }.reduce(:+)