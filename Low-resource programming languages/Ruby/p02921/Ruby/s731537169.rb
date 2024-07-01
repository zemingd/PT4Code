n = gets.to_i
h = gets.split(" ").map(&:to_i)
i = 0	
a = 0 
until i == n do
	s = 0 
	if i + s == n - 1
		break
	end
	if h[i + s] < h[i + s + 1]
		s += 1
		i += s
  	else
		while h[i + s] >= h[i + s + 1] do
			s += 1
			if i + s == n - 1
				break
			end
		end
		if s > a
			a = s
		end
		i += s + 1
	end
end

puts a
