def doit(a,b)
	1.upto(1251) do |n|
		n8 = (n*0.08).to_i
		n10 = (n*0.1).to_i
		if n8==a && n10==b then
			return n
		end
	end
	return -1
end

a, b= gets.chomp.split(" ").map{|e|e.to_i}


print(doit(a,b))