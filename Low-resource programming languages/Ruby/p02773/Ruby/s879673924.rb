N = gets.to_i
S = N.times.map { gets.chomp }
counts = S.each_with_object(Hash.new(0)) { |s, h| h[s] += 1 }
max = counts.values.max

puts counts.select { |_k, v| v == max }.keys.sort
