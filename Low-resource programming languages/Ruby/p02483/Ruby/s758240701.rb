x = gets.chomp.split(" ")

a = x[0].to_i
b = x[1].to_i
c = x[2].to_i

if a > b
	tmp = a
	a = b
	b = tmp
end
if a > c
	tmp = a
	a = c
	c = tmp
end
if b > c
	tmp = b
	b = c
	c = tmp
end

puts "#{a} #{b} #{c}"