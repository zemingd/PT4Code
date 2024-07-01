N, K = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

(N-K).times do |i|
	if arr[i] < arr[i+K]
		puts "Yes"
	else
		puts "No"
	end
end