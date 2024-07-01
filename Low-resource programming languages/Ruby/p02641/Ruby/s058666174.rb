X = gets.to_i
P = gets.split.map(&:to_i).sort_by{|_| (X-_).abs }
if X!=P.shift
	p X
else
	(1..).each{|d|
		pp = P.shift 2
		if not pp.include? X-d
			break p(X-d)
		elsif not pp.include? X+d
			break p(X+d)
		end
	}
end
