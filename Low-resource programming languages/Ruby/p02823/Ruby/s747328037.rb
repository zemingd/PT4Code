N, K, Q = gets.chomp.split.map(&:to_i)

if (Q - K)%2 == 0
	puts (Q - K)/2
else
	if Q - 1 >= N - K
		puts N - K
	else
		puts Q-1
	end
end