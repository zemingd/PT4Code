module Input
	def numread()
		s = gets().split()
		p = Array.new()
		for i in 0...s.size()
			p[i] = s[i].to_i()
		end
		return p
	end
	
	module_function:numread
end

include Input

loop{
	w = numread()
	if(w.size() == 0)
		break
	end
	n = w[0] + w[1];
	print(n.to_s().size(),"\n")
}