N = gets.to_i
num = [1]

5.times do |i|
    num << 9**(i + 1)
end
6.times do |i|
    num << 6**(i + 1)
end

num = num.sort
dp = Array.new(N + 1, 10**9)
dp[0] = 0

1.upto(N) do |i|
    num.each do |x|
    next if i < x
    dp[i] = dp[i] < dp[i - x] + 1 ? dp[i] : dp[i - x] + 1
    end
end

puts dp[-1]