x = gets.split.map(&:to_f)
A, B = x[0..1].sort
C, D = x[2..3].sort
E, F = x[4..5]

W = {}
(0..(F / A)).each do |a|
	(0..(F / B)).each do |b|
		w = (A * a + B * b) * 100 
		next if w > F
		W[w] = 1
	end
end

S = {}
(0..(F / C)).each do |c|
	(0..(F / D)).each do |d|
		s = C * c + D * d
		next if s > F
		S[s] = 1
	end
end
SUG = S.keys.sort

water = 0
sugar = 0
conc = 0
W.keys.sort.drop(1).each do |w|
	SUG.each do |s|
		weight = w + s 
	    c = 100 * s / w 
		break if weight > F || c > E
		if c > conc
			water = w 
			sugar = s 
			conc = c 
		end
	end
end

puts [water + sugar, sugar].map(&:to_i).join(' ')