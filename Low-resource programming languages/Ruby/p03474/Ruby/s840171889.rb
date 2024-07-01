A,B = gets.split(' ').map(&:to_i)
S = gets.to_s
flag = 0
numbers = 0..9

if S.size == (A + B + 1)
	if S[A] == '-'
		S.size.times do |i|
			if i != A
				flag = 0 unless numbers.include?(S[i])
			end
			if flag == 1
				puts 'No'
				exit
			end
		end
		puts 'Yes' if flag == 0
	else
		puts 'No'
		exit		
	end
else
	puts 'No'
	exit
end