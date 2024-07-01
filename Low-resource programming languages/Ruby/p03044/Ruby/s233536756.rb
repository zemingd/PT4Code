@res = [0, 0]
@h = Hash.new{|h,k|h[k]=[]}
N = gets.to_i
a = $<.map{|x| x.split.map(&:to_i)}.map{ |u, v, w| [[u, v, w],[v, u, w]] }
	.flatten(1).sort

#p a
@res = [nil, 0]
while a.size > 0 
	x = a.shift
	@res[x[1]] = (@res[x[0]] ^ x[2]) & 1
#	p ["x,res",x,@res]
	while	k = a.bsearch_index { |y| x[1] - y[0] }
#		p ["k",k,a[k]]
		x = a[k]
		@res[x[1]] = (@res[x[0]] ^ x[2]) & 1
		a.delete_at(k)
	end
end
puts @res[1..N]
