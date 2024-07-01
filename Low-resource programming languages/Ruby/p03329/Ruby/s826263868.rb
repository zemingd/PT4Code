def max(a,b)
    return a < b ? b : a
end
def min(a,b) 
    return a = a > b ? b : a
end
N = gets.to_i
dp = Array.new(N+1,123123123)
dp[1] = 1
N.times do |i|
    tm = i+1
    b = 1
    while(b<i+1)
        dp[i+1] = min(dp[i+1],dp[i+1-b]+1)
        b*=6
    end
    b = 1
    while(b<i+1)
        dp[i+1] = min(dp[i+1],dp[i+1-b]+1)
        b*=9
    end
end
p dp[N]