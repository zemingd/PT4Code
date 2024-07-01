N, K, Q = gets.split.map(&:to_i)
P = Array.new(N + 2, 0)
Q.times{ P[gets.to_i] += 1 }
puts (1 .. N).map{|i| K - Q + P[i] > 0 ? 'Yes' : 'No' }

