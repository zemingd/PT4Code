input = gets.chomp.split(' ')
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

i = a
sum = 0

while i <= b
	if c % i == 0 then
		sum += 1
	end
	i += 1
end

puts sum