def toi(a)
	b = []
	a.each do |n|
		b << n.to_i
	end
	b	
end

def if3(x)
	return incthree(x) || multithree(x)
end

def incthree(x)
	x = x.to_s
	return x.include?"3"
end
def multithree(x)
	return (x % 3 == 0)
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