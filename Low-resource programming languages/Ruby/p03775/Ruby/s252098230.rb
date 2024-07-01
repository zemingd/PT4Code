include Math

if __FILE__==$0
	r_i=lambda{|str|str.strip.to_i}
	x=r_i[gets]
	sq=sqrt(x).round
	if x/sq!=0
		while x%sq!=0
			sq+=1
		end
	end
	p sq.to_s.length
end