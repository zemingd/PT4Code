n_m = gets().split(" ")
n = n_m[0].to_i
m = n_m[1].to_i

n_count = Array.new(n,0)

for i in 1..m
	str = gets().split(" ")
	a = str[0].to_i
	b = str[1].to_i
	n_count[a-1] = n_count[a-1] + 1
	n_count[b-1] = n_count[b-1] + 1
end

for j in 1..n
	puts n_count[j-1]
end