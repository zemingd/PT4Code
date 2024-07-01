include Math
require "prime"

if __FILE__==$0

	r_i=lambda{|str|str.strip.to_i}
	x=r_i[gets]
	pr=Prime.prime?(x)
	sq=sqrt(x).round
	l=x.to_s.length
	if pr==false
		if x/sq!=0
			while x%sq!=0
				sq+=1
			end
		end
		l=sq.to_s.length
	end
	p l
end