N,K,Q = gets.split.map(&:to_i)
results = []

Q.times do
	results << gets.to_i
end

score_participants = Array.new(N){K}
results.each{|i|
	score_participants = score_participants.map.with_index(1){|p, j|
		next if p <= 0
		p -= 1 if i != j
		p
	}
}

score_participants.each do |s|
	if s > 0
		puts 'Yes'
	else
		puts 'No'
	end
end
