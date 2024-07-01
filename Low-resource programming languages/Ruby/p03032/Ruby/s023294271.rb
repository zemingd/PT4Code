v = $<.read.split.map(&:to_i)
N, k = v.shift(2)
K = [N*2, k].min
res = 0
u = v+v

1.upto(K < N ? K : N) do |n|
	0.upto(K-n < n ? K-n : n) do |m|
		next if n == m
		0.upto(n) do|l|
#			p [n,m,t=u[N-l...N+n-l],t.max(n-m)]
			t = u[N-l...N+n-l].max(n-m).inject(:+)
			res = t if res < t
		end
	end
end
p res

