h = gets.chomp.to_i
sum = 0

def calc(n)
	return 1 if n <= 1
	return 1 +  calc(n / 2) * 2
end

puts calc(h)

