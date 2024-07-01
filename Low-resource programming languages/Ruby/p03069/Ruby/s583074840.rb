N = gets.to_i

Q = gets.to_s
arry = Q.split('')

count = 0

i = 0

while i < N do
	if arry[i] == "#"  &&  arry[i] != arry[i+1]
		count += 1
	end
	i += 1
end

puts count