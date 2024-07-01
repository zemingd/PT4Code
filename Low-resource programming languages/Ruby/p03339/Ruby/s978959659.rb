N = gets.to_i
S = gets.chomp
dp = Array.new(N,0)
1.upto(N) do |i|
    dp[0]+=1 if S[i] == "E"
end
(N-1).times do |i|
    dp[i+1] = dp[i]
    dp[i+1] -= 1 if S[i+1] == "E"
    dp[i+1] += 1 if S[i] == "W"
end
puts dp.min