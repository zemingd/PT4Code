n = gets.to_i
def a(i)
	if i % 10 == 3
		print " #{i}"
		return
	end
	i /= 10
	if i != 0
		a(i)
	end
end
for i in 1..n do
	if i % 3 == 0
		print " #{i}"
		next
	end
	a(i)
end
puts