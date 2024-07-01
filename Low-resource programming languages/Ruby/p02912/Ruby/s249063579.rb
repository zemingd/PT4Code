class Q
	def initialize
		@a = [] # ascending order
	end

	def enq(v)
		@a.insert(index(v), v)
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
		return @a.bsearch_index{|_| v < _} || @a.size
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
p q.each.inject(&:+)
