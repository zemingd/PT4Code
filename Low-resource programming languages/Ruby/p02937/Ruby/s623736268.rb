S, T = gets.chomp, gets.chomp

I = [nil]*('z'.ord-'a'.ord+1)
IS = [nil]*S.size
S.chars.reverse_each.with_index{|c,i|
	c, i = c.ord-'a'.ord, S.size-1-i
	IS[i], I[c] = I[c], i
}

ICache = [nil]*('z'.ord-'a'.ord+1)
p T.each_char.inject(0){|i,c|
	id, im, c = i/S.size*S.size, i%S.size, c.ord-'a'.ord
	ic = (ICache[c]&&ICache[c]<=i) ? ICache[c] : I[c]
	break -1 unless ic
	ic = IS[ic] while ic && ic < im
	ic = ic.nil? ? id+S.size+I[c] : id+ic
	ICache[c] = ic%S.size
	next ic+1
}
