s = gets.chomp

N = s.length

n = Array.new(N)
n[0] = 1
for i in 1...N
    n[i] = (n[i-1] * 10) % 13
end

# dp[i][j] : 数
#   i : 桁
#   j : あまり
dp = Array.new(N+1).map{Array.new(13, 0)}

dp[0][0] = 1

s.reverse.chars.each_with_index do |c, i|
    if c == "?"
        cc = [0,1,2,3,4,5,6,7,8,9]
    else
        cc = [c.to_i]
    end

    for j in 0...13
        cc.each do |ccc|
            dp[i+1][(j + ccc * n[i]) % 13] += dp[i][j]
            dp[i+1][(j + ccc * n[i]) % 13] %= (10 ** 9 + 7)
        end
    end
end

puts dp[s.length][5]

