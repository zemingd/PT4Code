n,m = gets.chomp.split(" ").map(&:to_i)
edge = m.times.map{gets.chomp.split(" ").map(&:to_i)}
score = Array.new(n,-10**12)
score[0] = 0

n.times do |e|
	edge.each do |i, j, k|
		if score[i-1] == -10**12
			next
		end
		if score[i-1] + k > score[j-1]
			score[j-1] = score[i-1] + k
			if e == n-1					#n回目にも更新があるとき
				puts "inf"
				exit
			end
		end
	end
end
puts score[n-1]