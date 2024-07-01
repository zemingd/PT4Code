N, K, Q = gets.split.map &:to_i
A = (1..Q).map{gets.to_i}
# p [N, K, Q], A

if K > Q
	N.times{puts "Yes"}
	exit
end

points = Array.new(N, 0)

A.each{|x| # O(Q)
	points[x-1] += 1
}
points.each{|x|
	if K + x - Q > 0
		puts "Yes"
	else
		puts "No"
	end
}