N, K = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
score = 1
K.times do |i|
	score *= arr[i]
end

(N-K).times do |i|
	tmp = score / arr[i] * arr[i+K]
	if score < tmp
		puts "Yes"
	else
		puts "No"
	end
	score = tmp
end