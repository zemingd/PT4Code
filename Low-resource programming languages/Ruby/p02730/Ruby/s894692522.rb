S = gets.chomp
N = S.length - 1
state = 'Yes'

(0..(N - 1)/2).each do |i|
	if (S[i] != S[-i]) && (S[i] != S[(N - 1)/2 - i]) && (S[-i] != S[(N - 1)/2 + i])
		state = 'No'
		break
	end
end

puts state