S = []
3.times{S << gets.chomp}

puts (0..2).to_a.map{|i| S[i][i]}.join
