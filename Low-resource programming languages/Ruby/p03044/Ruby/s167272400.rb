N = gets.to_i
@h = []
@res = [nil, 0]
def f(i)
#	return if !@res[i].nil?	
	@h[i].each do |x|
#		p [i,"->",x[0],@res[x[0]]]
		next if !@res[x[0]].nil?
		@res[x[0]] = (@res[i] ^x[1])&1
		f(x[0])
	end
end


(N-1).times do
	u, v, w = gets.split.map(&:to_i)
#	u < v ? @h[u] << [v,w] : @h[v] << [u,w]
	@h[u] ||= []; @h[u] << [v,w]
      	@h[v] ||= []; @h[v] << [u,w]
end
#p @h
f(1)
@res.shift
puts @res
