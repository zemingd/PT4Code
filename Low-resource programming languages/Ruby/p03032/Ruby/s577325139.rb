v = $<.read.split.map(&:to_i)
N, K = v.shift(2)
v = v+v
res = 0
0.upto(K) do |n|
	0.upto(n) do |m|
		[K-n+1,n+1].min.times do |l|
			t =  v[N-m...N-m+n].max(n-l).push(0).inject(:+)
			res = t if res < t
		end
	end
end
p res
