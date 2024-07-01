N,K,Q = gets.split(' ').map(&:to_i)
A = Q.times.map{gets.to_i}

points = Array.new(N,K)

Q.times do |i|
	N.times do |j|
		unless (A[i] - 1) == j
			points[j] -= 1
		end
	end 
end

N.times do |ans|
	if points[ans] > 0
		puts 'Yes'
	else
		puts 'No'
	end
end