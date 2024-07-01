S = gets.chomp
N = S.length

if (S == S.reverse) && (S[0..(N - 1)/2 - 1] == S[0..(N - 1)/2 - 1].reverse) && (S[(N + 1)/2..(-1)] == S[(N + 1)/2..(-1)].reverse)
	puts 'Yes'
else
	puts 'No'
end