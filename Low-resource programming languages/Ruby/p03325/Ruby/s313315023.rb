require 'prime'

n = gets.to_i
a = gets.split.map(&:to_i)
sum = 0
a.each do |i|
	pr = Prime.prime_division(i)
	if pr[0][0] == 2
		sum += pr[0][0]*pr[0][1]/2
	end
end

puts sum
