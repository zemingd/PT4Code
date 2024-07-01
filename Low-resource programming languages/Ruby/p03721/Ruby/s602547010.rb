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

count = 0

for j in 0..n-1
	count = count + b[j]
end

c = Array.new(count)

time = 0

for t in 0..n-1
	for u in 0..b[t]
		c[time]=a[t]
		time = time + 1
	end
end

d = c.sort

puts d[k-1]