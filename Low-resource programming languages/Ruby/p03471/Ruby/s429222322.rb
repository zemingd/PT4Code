n,y = gets.split(' ').map(&:to_i)
y = y/1000
ans = '-1 -1 -1'

for c in 0..y
key = 10 * n - y - 9 * c
	if key % 5 == 0
		b = key / 5
		a = n - b - c
		if b >= 0 && a >= 0
			ans = "#{a} #{b} #{c}"
			break
		end
	end
end
puts ans
