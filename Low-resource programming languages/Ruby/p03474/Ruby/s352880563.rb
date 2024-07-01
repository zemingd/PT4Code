A,B = gets.split(' ').map(&:to_i)
S = gets.to_s
numbers = 0..9

S.size.times do |i|
	if i < A
		unless numbers.include?(S[i].to_i)
			puts 'Ao'
			exit
		end
      
          elsif i == A
		if S[i] != "-"
			puts 'co'
			exit
		end
      
    elsif i > A
		unless numbers.include?(S[i].to_i)
			puts 'BO'
			exit
		end


	end

end

puts 'Yes'
