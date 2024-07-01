class Binexpgen
	@len # max length of log2 i
	def initialize(len)
		@len = len
		@i = -1
	end
	def gen()
		@i += 1
		return bin_exp(@i)
	end
	def bin_exp(i)
		arr = Array.new(@len) { |i| 0 }
		cnt = 0
		while(cnt < @len)
			arr[cnt] = i&1
			i /= 2
			cnt += 1
		end
		return arr
	end
end

N,M=gets.chomp.split(' ').map{|n| n.to_i}
K=Array.new(M)
S=Array.new(M)
for i in 0..(M-1)
	tmp = gets.chomp.split(' ').map{|n| n.to_i}
	K[i] = tmp[0]
	S[i] = tmp[1..(tmp.size-1)]
end
P = gets.chomp.split(' ').map{|n| n.to_i}

cnt = 0
binexpgen = Binexpgen.new(N)
for n in 0..(2**N-1)
	binarr = binexpgen.gen()
	# p binarr
	flg = true
	for m in 0..(M-1)
		thiscnt = 0
		for k in 0..(K[m]-1)
			thiscnt += binarr[S[m][k]-1]
		end
		flg &= (thiscnt % 2 == P[m])
	end
	cnt += 1 if flg
	# puts "hit!" if flg
end
puts cnt

