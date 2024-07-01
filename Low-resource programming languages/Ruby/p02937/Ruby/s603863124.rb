S, T = gets.chomp, gets.chomp

I = [nil]*('z'.ord-'a'.ord+1)
IS = [nil]*S.size
S.chars.reverse_each.with_index{|c,i|
	c, i = c.ord-'a'.ord, S.size-1-i
	IS[i], I[c] = I[c], i
}

ICache = [nil]*('z'.ord-'a'.ord+1)
p T.each_char.inject([0,0]){|acc,c|
	id, im, c = *acc, c.ord-'a'.ord
	ic = (ICache[c]&&ICache[c]<=im) ? ICache[c] : I[c]
	break [0,-1] unless ic
	ic = IS[ic] while ic && ic < im
	if ic.nil?
		id += 1
		ic = I[c]
	end
	ICache[c] = ic
	next [id, ic+1]
}.tap{|a,b| break a*S.size+b }
