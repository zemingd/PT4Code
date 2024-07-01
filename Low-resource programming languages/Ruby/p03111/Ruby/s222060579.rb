N,A,B,C=gets.split.map &:to_i
L=N.times.map{gets.to_i}
I=1<<30

def dfs(cur, a, b, c)
	if cur==N
		return [a,b,c].min>0 ? (a-A).abs+(b-B).abs+(c-C).abs-30 : I
	end
	[
		dfs(cur + 1, a, b, c),
		dfs(cur + 1, a + L[cur], b, c) + 10,
		dfs(cur + 1, a, b + L[cur], c) + 10,
		dfs(cur + 1, a, b, c + L[cur]) + 10,
	].min
end
p dfs 0,0,0,0