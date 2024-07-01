n, m = gets.split(" ").map { |s| s.to_i }

even = n.times.to_a
odd = m.times.to_a

puts even.combination(2).to_a.length + odd.combination(2).to_a.length