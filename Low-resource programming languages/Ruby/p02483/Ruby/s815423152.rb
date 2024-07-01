str = gets.chomp.split(" ")
a = str[0].to_i
b = str[1].to_i
c = str[2].to_i

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