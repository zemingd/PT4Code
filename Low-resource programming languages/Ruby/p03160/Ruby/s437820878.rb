n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)
dp = Array.new(n,Float::INFINITY)
dp[0] = 0
(1..n-1).each do |i|
    if i >= 2
        dp[i] = [(h[i]-h[i-1]).abs + dp[i-1],(h[i]-h[i-2]).abs + dp[i-2]].min
    end
    if i == 1
        dp[i] = (h[i]-h[i-1]).abs
    end
end
puts dp.pop