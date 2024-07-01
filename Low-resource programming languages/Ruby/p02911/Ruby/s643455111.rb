N, K, Q = gets.chomp.split(' ').map{|n| n.to_i}
ps = Array.new(N).fill(K - Q)
Q.times.map{ps[gets.to_i - 1] += 1}
ps.map{|p| puts p > 0 ? "Yes" : "No"}