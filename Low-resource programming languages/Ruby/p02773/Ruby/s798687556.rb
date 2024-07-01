N = gets.to_i
S = N.times.map { gets.chomp }
counts = Hash.new(0)
S.each { |s| counts[s] += 1 }

puts counts.select { |_k, v| v == counts.values.max }.keys.sort
