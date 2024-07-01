# input
N, K, Q = gets.split.map(&:to_i)
A = Q.times.map{gets.to_i}

# compute
C = Array.new(N, 0)
A.each do |i|
    C[i-1] += 1
end

# output
N.times do |i|
    puts (K - Q + C[i] > 0 ? "Yes" : "No")
end

