require 'prime'
# n = gets.chomp.to_i
a, b = gets.chomp.split().map(&:to_i)

a_prime = a.prime_division.map{|x,y| x}
b_prime = b.prime_division.map{|x,y| x}
nums = a_prime & b_prime

puts nums.size + 1