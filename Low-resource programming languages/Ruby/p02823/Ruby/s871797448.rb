N, K, Q = gets.chomp.split.map(&:to_i)

if (Q - K)%2 == 0
	puts (Q - K)/2
else
	start = K - 1
	fin = N - Q
	if start < fin
		puts (Q-1+start+1)/2
	else
		puts (N-K+fin+1)/2
	end
end