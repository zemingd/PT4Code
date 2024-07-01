print 'A = '
a = gets.to_i

print 'B = '
b = gets.to_i


coin = 0
2.times do
	if a >= b
		coin += a
		a -= 1
	else
		coin += b
		b -= 1
	end
end
print 'answer = '
puts coin