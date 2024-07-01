N = gets.to_i
@res = [nil, 0]

def f(i)
	@a[i].each do |x|
		next if !@res[x[0]].nil?
		@res[x[0]] = (@res[i] ^ x[1])&1
		f(x[0])
	end
end

@a = Array.new(N+1){Array.new()}
$<.read.split.map(&:to_i).each_slice(3) do |u,v,w|
	@a[u] << [v,w]
	@a[v] << [u,w]
end

f(1)
@res.shift
puts @res
