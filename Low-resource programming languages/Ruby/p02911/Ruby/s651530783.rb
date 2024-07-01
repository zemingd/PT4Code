N,K,Q = gets.split(' ').map(&:to_i)
A = Q.times.map{gets.to_i}

points = Array.new(N,K-Q)

Q.times do |i|
	points[A[i] - 1] += 1	
end

N.times do |ans|
	if points[ans] > 0
		puts 'Yes'
	else
		puts 'No'
	end
end

