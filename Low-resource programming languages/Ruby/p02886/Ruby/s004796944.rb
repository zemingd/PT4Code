n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
sum = 0
0.upto(n-2) do |i|
	(i+1).upto(n-1) do |j|
		sum += arr[i] * arr[j]
	end
end
puts sum


