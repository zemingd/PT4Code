N = gets.to_i
H = gets.split.map(&:to_i)
p H.each_cons(2).inject(0){|sum, h|
	h[0] >= h[1] ? sum+1 : 0
}
