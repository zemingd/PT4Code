C = 2.times.map { gets.chomp }
puts C[0].reverse == C[1] && C[1].reverse == C[0] ? "YES" : "NO"