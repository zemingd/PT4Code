k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map{|e|e.to_i}

def check(k,a,b)
	n = 0
	if a==0 then return "OK" end
	while n<1000 do
		if a<=n && n<=b then return "OK" end
		n += k
	end
	return "NG"
end

print check(k,a,b)