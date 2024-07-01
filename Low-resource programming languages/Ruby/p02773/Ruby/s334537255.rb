N = gets.to_i
S = N.times.map { gets.chomp }

h = Hash.new(0)
S.each { |s| h[s] += 1 }
max = h.values.max
puts h.select { |_k, v| v == max }.keys.sort