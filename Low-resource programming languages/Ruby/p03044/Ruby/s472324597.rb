N = gets.to_i
@h = Hash.new { |h, k| h[k]=[] }
@res = [nil, 0]

def f(i)
	return if !@h.include?(i)
	@h[i].each do |x|
#		p [i,"->",x[0],@res[x[0]]]
		next if !@res[x[0]].nil?
		@res[x[0]] = (@res[i] ^ x[1])&1
		f(x[0])
	end
end


(N-1).times do
	u, v, w = gets.split.map(&:to_i)
	@h[u] << [v,w]
    @h[v] << [u,w]
end
f(1)
@res.shift
puts @res
