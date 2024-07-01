def gcd(a,b)
	t=0
	while a%b!=0
		t=b
		b=a%b
		a=t
	end
	return b
end

def lcm(a,b)
	return a*b/gcd(a,b)
end

if __FILE__==$0
	inf=Float::INFINITY
	
	readln_i=lambda{|dl|gets.chomp.split(dl).map(&:to_i)}
	read_i=lambda{gets.chomp.to_i}
	readln_s=lambda{|dl|gets.chomp.split(dl)}
	read_s=lambda{gets.chomp}
	
	n=read_i[]
	t=[]
	for i in 0..n-1
		t.push(read_i[])
	end
	
	t.sort!
	mx=t[t.length-1]
	lc=Array.new(t.length)
	
	for i in 0..t.length-1
		lc[i]=lcm(mx,t[i])
	end
	
	while lc.uniq.length>1
		t=lc.dup
		t.sort!
		mx=t[t.length-1]
		for i in 0..t.length-1
			lc[i]=lcm(mx,t[i])
		end
	end
	p lc[0]
end