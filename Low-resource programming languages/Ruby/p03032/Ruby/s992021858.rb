v = $<.read.split.map(&:to_i)
N, k = v.shift(2);K = [N*2, k].min
res = 0
u = v+v
0.upto(K) do |n|
	0.upto(n) do |m|
		[K-n+1,n+1].min.times do |l|
			t =  u[N-m...N-m+n].max(n-l).push(0).inject(:+)
			res = t if res < t
		end
	end
end
p res
