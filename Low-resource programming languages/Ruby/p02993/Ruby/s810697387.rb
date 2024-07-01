A=gets.chomp.split('').map{|i| i.to_i}
for i in 0..2
	if(A[i] == A[i+1])
		puts "Bad"
		exit(0)
	end
end
puts "Good"
