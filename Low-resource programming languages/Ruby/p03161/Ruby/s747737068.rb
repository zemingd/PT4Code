N,K = gets.split.map &:to_i
H = gets.split.map &:to_i

DP = Array.new(N, 99999)
DP[0] = 0

N.times do |i|
    K.times do |j|
        n = i + j + 1
        next if n >= N
        cost = (H[n] - H[i]).abs + DP[i]
        DP[n] = cost if DP[n] > cost
    end
end

p DP[N-1]