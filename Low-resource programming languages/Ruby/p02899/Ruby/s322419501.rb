N, *A = $<.read.split.map(&:to_i)
IA = [nil]*N
i = 0
while i < N
	IA[A[i]-1] = i+1
	i += 1
end
puts IA.join(' ')
