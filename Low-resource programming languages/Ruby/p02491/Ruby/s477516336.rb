in_str = gets
v = in_str.split(" ").map!{|x|
	x.to_i
}

d = v[0] / v[1]
r = v[0].div(v[1])
f = v[0].to_f / v[1]
print d, " ", r, " ", sprintf("%.5f", f)