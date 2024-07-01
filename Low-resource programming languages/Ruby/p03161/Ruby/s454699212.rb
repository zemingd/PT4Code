N,K = gets.split.map &:to_i
H = gets.split.map &:to_i

DP = Array.new(N, nil)
DP[0] = 0

N.times do |i|
    K.times do |j|
        n = i + j + 1
        next if n >= N
        cost = (H[n] - H[i]).abs + DP[i]
        DP[n] = cost if DP[n].nil? || DP[n] > cost
    end
end

p DP[N-1]