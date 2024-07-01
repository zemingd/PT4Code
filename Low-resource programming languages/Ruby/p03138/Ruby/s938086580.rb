N, K = gets.split.map &:to_i
K_b = K.to_s(2)

Size = K_b.size

As = gets.split.map &:to_i

A_bs = As.map{|a|
	b = a.to_s(2)
	"0"*([Size - b.size, 0].max) + b
}

counts = [0]*Size

for i in 0...N do
	s = A_bs[i].size
	for j in (s - Size)...s do
		counts[j] += 1 if A_bs[i][j] == '0'
	end
end

Best_ans = [*0...Size].map{|i|
	num_0 = counts[i]
	num_0 <= (N - num_0) ? '0' : '1'
}.join.to_i(2)

X = [Best_ans, K].min

p As.map{|a| a^X }.inject(0, :+)


