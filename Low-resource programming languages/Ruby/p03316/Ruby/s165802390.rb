n = gets.to_i
s_n = 0
c = n

while c > 0
	s_n += c % 10
	c /= 10
end

if n % s_n == 0
	puts "Yes"
else
	puts "No"
end