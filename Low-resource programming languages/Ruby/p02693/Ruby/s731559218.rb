k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map{|e|e.to_i}

def check(k,a,b)
	n = 0
	while n<1000 do
		if a<=n && n<=b then return "OK" end
		n += k
	end
	return "NG"
end

print check(k,a,b)