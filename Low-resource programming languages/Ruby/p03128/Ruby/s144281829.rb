def lscan; gets.split.map(&:to_i); end

D = [ 0,2,5,5,4,5,6,3,7,6 ]

N, M = lscan
A = lscan

dp = [-1]*(N+10)
dp[0] = 0

N.times do |i|
    next if dp[i] == -1
    A.each do |a|
        dp[i+D[a]] = [dp[i+D[a]], dp[i]*10 + a].max
    end
end

p dp[N]