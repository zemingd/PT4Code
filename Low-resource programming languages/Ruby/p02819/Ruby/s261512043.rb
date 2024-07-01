require 'prime'

s = gets.to_i

n = s

res = 0

while n < 1000000
	if n%2 == 1
		if n.prime?
			res = n
			break
		end
		n += 2
	else
		n += 1
	end
end

if s == 2
	puts 2
else
	puts res
end