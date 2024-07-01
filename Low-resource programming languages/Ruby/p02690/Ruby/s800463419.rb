x = gets.chomp.to_i

def pow5(n)
	m = n*n
	return m*m*n
end

def ele(x)
	n = 2
	while true
		if x%n==0 then return n end
		n += 1
	end
end

def search(e,x)
	a1 = 0
	a2 = 0
	while true
		if pow5(a1) - pow5(a1-e) == x then
			return a1
		end
		if pow5(a2) - pow5(a2-e) == x then
			return a2
		end
		a1 += 1
		a2 -= 1
	end
end

if x==1 then
	print(0)
	print(" ")
	print(-1)
else
	e = ele(x)
	#p "done"
	a = search(e,x)
	#p "done"
	print(a)
	print(" ")
	print(a-e)
end