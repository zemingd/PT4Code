while tmp=gets
	a,b=tmp.split.map(&:to_i)
	a+=b
	puts a!=0?"#{(Math::log10(a)).to_i+1}":"1"
end