n_k = gets().split(" ")
n = n_k[0].to_i
k = n_k[1].to_i

a = Array.new(n)
b = Array.new(n)

for i in 0..n-1
	str = gets().split(" ")
	a[i] = str[0].to_i
	b[i] = str[1].to_i
end

lank = Array.new(n)
c = Array.new(n)
for l in 0..n-1
	c[l] = a[l]
end

for h in 0..n-1
	for t in h..n-1
		if c[t].to_i > c[t+1].to_i
			alt = c[t]
			c[t+1] = c[t]
			c[t] = alt
		end
	end
end

count = 0
time = 0

while count < k
	for j in 0..n-1
		if c[time] == a[j]
			kazu = j
			break
		end
	end
	syuturyoku = a[kazu]
	count = count + b[kazu]
	time = time + 1
end

puts syuturyoku