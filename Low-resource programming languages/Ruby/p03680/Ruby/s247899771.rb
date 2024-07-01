n = gets().to_i
a = Array.new(n+1,0)
for i in 1..n
	a[i] = gets().to_i
end

count = 0
j = a[1]
stop = 0
if j==2
	count = 1
	stop = 1
end
while stop==0
	j = a[j]
	if j == 2
		count+= 1
		stop = 1
	end
	count += 1
	if count > n
		count = -1
		stop = 1
	end
end

print(count,"\n")