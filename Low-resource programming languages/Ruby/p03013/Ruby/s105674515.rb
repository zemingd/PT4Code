N, M = gets.split.map!(&:to_i)
A = []
while tmp = gets
	A << tmp.to_i
end
ans = Array.new(N + 1, 1)
i = N - 2
while i > -1
	ans[i] = if A.member?(i)
						0
					else
						ans[i + 1] + ans[i + 2]
					end
	i += -1
end
puts ans[0] % (1e9 + 7).to_i