bool = true
array = []
count = gets.chomp.to_i
count.times do |n|
	array << gets.chomp.split(" ").map(&:to_i)
end
6.times do |i|
	number = array[0][i]
	(1..(count - 1)).each do |j|
		if array[j][i] == number
			bool = false
			break
		end
	end
	break if !bool
end
puts bool ? "YES" : "NO"