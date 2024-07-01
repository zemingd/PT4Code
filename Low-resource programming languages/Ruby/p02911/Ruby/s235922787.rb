N,K,Q = gets.split.map(&:to_i)
results = []

Q.times do
	results << gets.to_i
end

score_participants = []
1.upto(N) do |i|
	count = results.select{|r| r == i}.size
	score_participants << K - Q + count
end

score_participants.each do |s|
	if s > 0
		puts 'Yes'
	else
		puts 'No'
	end
end




