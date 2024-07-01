n=gets.to_i;
b=(a=gets.split.map(&:to_i)).sort;
a.map{|x|
	p x<=b[n/2-1] ? b[n/2] : b[n/2-1]
}