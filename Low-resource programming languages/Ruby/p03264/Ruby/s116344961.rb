n=gets.to_i
sumSetNumber = n.even? ? (n/2) : 0 
timesCount = (n-1)/2
(1..timesCount).each do |count|
	sumSetNumber += 2*count
end
puts sumSetNumber