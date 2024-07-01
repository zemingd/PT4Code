n = gets().to_i
x = gets().split(" ")
x_a = x.sort

for i in 1..n
	if x[i-1].to_i < x_a[n/2].to_i
		puts(x_a[n/2])
	elsif x[i-1].to_i >= x_a[n/2].to_i
		puts(x_a[n/2-1])
	end
end