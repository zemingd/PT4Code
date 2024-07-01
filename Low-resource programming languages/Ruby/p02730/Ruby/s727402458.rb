S = gets.chomp
N = S.length - 1
state = 'Yes'

((N - 1)/2).times do |i|
	if (S[i] != S[N - i - 1]) && (S[i] != S[(N - 1)/2 - i]) && (S[-i] != S[(N + 3)/2 + i])
		state = 'No'
		break
	end
end

puts state