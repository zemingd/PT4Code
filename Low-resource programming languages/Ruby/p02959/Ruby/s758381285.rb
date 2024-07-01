n = gets.to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i

total = 0

(0...n).each{ |i|
	if b[i] >= a[i] then
		total += a[i]
		b[i] -= a[i]
	else
		total += b[i]
		b[i] = 0
	end
	
	if b[i] >= a[i+1] then
		total += a[i+1]
		b[i] -= a[i+1]
	else
		total += b[i]
		a[i+1] -= b[i]
	end
}

puts total
