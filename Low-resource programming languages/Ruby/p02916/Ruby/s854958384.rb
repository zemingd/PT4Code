n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)
sum = b[a[0]-1]
n.times  do |i|
	if a[i+1] == a[i] + 1
		sum += (b[a[i+1]-1] + c[a[i]-1])
	else
		puts b[a[i+1]]
		sum += b[a[i+1]-1]
	end
	i += 1
	if i == n-1
		break
	end
end
puts sum


