def toi(a)
	b = []
	a.each do |n|
		b << n.to_i
	end
	b	
end
def if3(x)
	if x % 3 == 0 || x / 10 == 3
		true
	elsif x > 10
		if3(x/10)
	else
		false
	end
end

def f(x)
	if if3(x)
		print(" #{x}")
	end
end

n = gets().to_i
for l in 1 .. n
	f(l)
end

	print("\n")