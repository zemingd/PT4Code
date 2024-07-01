class Q
	def initialize
		@h = [] # max-heap
	end

	def enq(v)
		@h.push(v)
		up_heap
	end

	def deq
		max, last = @h[0], @h.pop
		unless @h.empty?
			@h[0] = last
			dn_heap
		end
		return max
	end

	def all(&block)
		return @h.each(&block)
	end

private
	def up_heap
		i, up = @h.size-1, @h[-1]
		while 0 <= (iP = (i-1)/2)
			break unless @h[iP] < up
			@h[i], i = @h[iP], iP
		end
		@h[i] = up
	end

	def dn_heap
		i, dn, size = 0, @h[0], @h.size
		while (iC = 2*i+1) < size
			iC += 1 if iC+1 < size and @h[iC] < @h[iC+1]
			break unless dn < @h[iC]
			@h[i], i = @h[iC], iC
		end
		@h[i] = dn
	end
end

N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

q = Q.new
A.each{|a|
	q.enq a
}
M.times{
	q.enq(q.deq/2)
}
p q.all.inject(:+)
