N, M = gets.split(' ').map(&:to_i)

@par = (0..N).to_a

def root(i)
	return i if @par[i] == i
	return @par[i] = root(@par[i])
end

def same(i, j)
	return root(i) == root(j)
end

@size = [1] * (N + 1)
def size(i)
	@size[i] = @size[root(i)]
end

def unite(i, j)
	i = root(i)
	j = root(j)
	if !same(i, j)
		@par[j] = i
		@size[i] += @size[j]
	end
end

bridge = []
M.times do
	x, y = gets.split(' ').map(&:to_i)
	bridge.unshift([x, y])
end

cnt = N * (N - 1) / 2
inconv = []
bridge.each do |a, b|
	inconv.unshift(cnt)
	if !same(a, b)
		cnt -= size(a) * size(b)
		unite(a, b)
	end
end

puts inconv