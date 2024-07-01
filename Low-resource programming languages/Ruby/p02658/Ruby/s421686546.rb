_,*A = $<.read.split.map(&:to_i)
z = A.inject(1){|z,a|
	z *= a
	1000000000000000000<z ? (break z) : (next z)
}
if 1000000000000000000<z
	p(-1)
else
	p z
end
