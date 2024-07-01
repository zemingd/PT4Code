a,b,c = gets.split.map(&:to_i);
k = gets.to_i

if a >= b and a >= c
	k.times do
		a *= 2
	end
	puts "#{a + b + c}"
elsif b >= a and b >= c
	k.times do
		b *= 2
	end
	puts "#{a + b + c}"
else
	k.times do
		c *= 2
	end
	puts "#{a + b + c}"
end