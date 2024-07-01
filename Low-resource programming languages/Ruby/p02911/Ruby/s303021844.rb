n, k, q = STDIN.gets.split(/\s+/).map(&:to_i)
answer_count = Hash.new(0)
q.times.each{ answer_count[STDIN.gets.to_i] += 1 }
participants_survived = (1..n).map{|i| k > q - answer_count[i] }
participants_survived.each { |participant_survived| puts (participant_survived ? "Yes": "No")}

