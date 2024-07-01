N,*ABC = gets.split.map(&:to_i)
L = $<.map(&:to_i)

Mp = lambda{|abc|
	return Float::INFINITY if abc.any?{|x| x[1]<0 }
	return (0..2).inject(0){|a,i|
		a + (abc[i][0]-ABC[i]).abs + abc[i][1]*10
	}
}
min = Float::INFINITY
Join = lambda{|abc,i|
	abc.each_with_index{|x,j|
		x[0] += L[i]
		x[1] += 1
		mp = Mp[abc]
		min = mp if mp < min
		Join[abc,i+1] if i+1 < N
		x[0] -= L[i]
		x[1] -= 1
	}
	Join[abc,i+1] if i+1 < N
}

Join.call([[0,-1],[0,-1],[0,-1]], 0)
p min
