def MSB(x)
	x |= x>>1
	x |= x>>2
	x |= x>>4
	x |= x>>8
	x |= x>>16
	x += 1
	return [31,  0, 22,  1, 28, 23, 18,  2, 29, 26, 24, 10, 19,  7,  3, 12,
	        30, 21, 27, 17, 25,  9,  6, 11, 20, 16,  8,  5, 15,  4, 14, 13
	       ][((x*0x076be629)&0xFFFFFFFF) >> 27]
end

class Q
	def initialize
		@a = [] # ascending order
	end

	def size
		@a.size
	end

	def enq(vd)
		v, d = vd
		i = index(v)
		if @a[i] and @a[i].first == v
			@a[i].last += d
		else
			@a.insert(i, [v, d])
		end
		return v
	end

	def deq
		return @a.pop
	end

	def each(&block)
		return @a.each(&block)
	end

private
	def index(v)
		return @a.bsearch_index{|_| v < _[0] } || @a.size
	end
end

N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

q, msbsum = Q.new, 0
A.each{|a|
	q.enq [a, 1]
	msbsum += MSB(a)+1
}

m = 0
until m == M
	a, d = q.deq
	break if a == 0
	shift = [(M-m)*MSB(a)/(msbsum-m), 1].max
	if shift*d <= M-m
		q.enq [a>>shift, d]
		m += shift*d
	else
		raise unless shift == 1
		q.enq [a>>1, M-m]
		q.enq [a, d-(M-m)]
		m += M-m
	end
end

p q.each.map{|v,d| v*d }.inject(&:+)||0
