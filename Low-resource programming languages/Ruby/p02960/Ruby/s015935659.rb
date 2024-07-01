s = gets.chomp

n = Array.new(s.length)
n[0] = 1
for i in 1...s.length
    n[i] = (n[i-1] * 10) % 13
end

# dp[i][j] : 数
#   i : 桁
#   j : あまり
dp = Array.new(s.length+1).map{Array.new(13, 0)}

dp[0][0] = 1

s.reverse!
s.chars.each_with_index do |c, i|
    for j in 0...13
        if c == "?"
            10.times do |cc|
                x = (j + cc * n[i]) % 13
                dp[i+1][x] = (dp[i+1][x] + dp[i][j]) % 1000000007
            end
        else
            x = (j + c.to_i * n[i]) % 13
            dp[i+1][x] = (dp[i+1][x] + dp[i][j]) % 1000000007
        end
    end
end

puts dp[s.length][5]
