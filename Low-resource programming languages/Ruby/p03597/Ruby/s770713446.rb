a, b, c, d, e, f = gets.split.map{|x| x.to_i}

s = []
w = []
50.times do |i|
	50.times do |j|
		k = c * i + d * j
		s << k if k < f
		k = (a * i + b * j) * 100
		w << k if k <= f && k > 0
	end
end

maxPr = 0
sumA = 0
sumS = 0

w.each do |i|
	s.each do |j|
		if i + j <= f
			pr = j.to_f / (i + j)
			if pr > maxPr && j * 100 <= e * i
				maxPr = pr
				sumA = i + j
				sumS = j
			end
		end
	end
end

print sumA, ' ', sumS