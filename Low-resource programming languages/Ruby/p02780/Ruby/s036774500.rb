n, k = gets.chomp.split(" ").map(&:to_i)
pi = gets.chomp.split(" ").map(&:to_f)
arr = Array.new(n-k+1, 0)
dp = [0]
1.upto(pi.max) do |i|
    dp << dp[i-1] + i 
end
(n-k+1).times do |i|
    k.times do |j|
        arr[i] += dp[pi[i+j]] / pi[i+j]
    end
end
puts arr.max