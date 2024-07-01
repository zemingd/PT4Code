n = gets().to_i
a = Array.new(n+1,0)
for i in 1..n
	a[i] = gets().to_i
end

count = 1
j = a[1]
stop = 0
while stop==0
	j = a[j]
	count += 1
	if j == 2
		stop = 1
	end
	if count > n
		count = -1
		stop = 1
	end
end

print(count,"\n")