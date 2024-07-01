n = gets.to_i
a = gets.split(' ').map(&:to_i)

sum = 1

a.each do |i|
	sum = sum * i
end

sum = -1 if sum > 1000000000000000000

puts sum