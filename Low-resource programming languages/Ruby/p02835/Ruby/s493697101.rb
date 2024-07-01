sum = 0
(gets.split.map(&:to_i)).each{|an|sum += an}
(sum >= 22) ? (puts "bust"):(puts "win")
