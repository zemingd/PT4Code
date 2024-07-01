s = gets.chomp

n = [1, 10, 9, 12, 3, 4]
N = n.length

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
                x = (j + cc * n[i%N]) % 13
                dp[i+1][x] = (dp[i+1][x] + dp[i][j]) % 1000000007
            end
        else
            x = (j + c.to_i * n[i%N]) % 13
            dp[i+1][x] = (dp[i+1][x] + dp[i][j]) % 1000000007
        end
    end
end

puts dp[s.length][5]
