s = gets.chomp

mod = 10 ** 9 + 7
n = s.length
dp = Array.new(n + 1) { Array.new(13, 0) }

(1..1).each do |i|
    c = s[i-1]
    if c != '?'
        num = c.to_i
        dp[i][num % 13] = 1
    else
        (0..9).each do |num|
            dp[i][num % 13] += 1
        end
    end
end

(2..n).each do |i|
    c = s[i-1]
    if c != '?'
        num = c.to_i
        (0...13).each do |m|
            dp[i][(m * 10 + num) %13] = dp[i][(m * 10 + num) %13] + dp[i-1][m]
        end
    else
        (0..9).each do |num|
            (0...13).each do |m|
                dp[i][(m * 10 + num) % 13] = dp[i][(m * 10 + num) % 13] + dp[i-1][m]
            end
        end
    end

    (0...13).each do |m|
        dp[i][m] = dp[i][m] % mod
    end
end

puts dp[n][5]
