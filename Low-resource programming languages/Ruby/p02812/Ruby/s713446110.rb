N = gets.to_i

S = gets.chomp.split('')

i = 0

count = 0

while i < N
	if S[i] == 'A' && S[i+1] == 'B' && S[i+2] == 'C'
		count += 1
	end
	i += 1
end

puts count