A,B = gets.split(' ').map(&:to_i)
S = gets.to_s
flag = 0
numbers = 0..9

if S.size == (A + B + 1)

	S.size.times do |i|
		if i != A
			flag = 1 unless numbers.include?(S[i])
		else
			flag = 1 unless S[i] != '-'
		end
	end
else
	flag = 1
end

if flag == 0
	puts 'Yes'
else
	puts 'No'
end
