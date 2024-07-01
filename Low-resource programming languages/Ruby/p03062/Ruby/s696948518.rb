N = gets.to_i
a = gets.split(' ').map(&:to_i)
b = a.map(&:abs).sort

minus = (a.select{|i| i < 0}.size)&1
if minus == 0
	sum = b.inject(:+)
else
	sum = b.inject(:+) - b[0]*2
end

puts sum
