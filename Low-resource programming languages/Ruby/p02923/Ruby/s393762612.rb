n = gets.to_i
h = gets.split(" ").map(&:to_i)
a = 0
n.times do |i|
	s = 0
	if s+i == n-1
		break
	end
	while h[s+i] >= h[s+i+1] do
		s += 1
		if s+i == n-1
			break
		end
	end
	if s > a
      a = s
    end
end

puts a
