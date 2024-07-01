S = gets.chomp
dp = Array.new(S.length){Array.new(13, 0)}
S.each_char.with_index do |s, i|
    multiplier = 10 ** (S.length - i - 1)
    if s == '?'
        if i == 0
            for j in 0..9
                dp[i][(j * multiplier) % 13] = 1
            end
        else
            for j in 0..9
                remain = (j * multiplier) % 13
                dp[i] = dp[i].zip(dp[i-1].rotate(-remain)).map{|x, y| x + y}
            end
        end
    else
        remain = (s.to_i * multiplier) % 13
        if i == 0
            dp[i] = Array.new(13, 0)
            dp[i][remain] = 1
        else
            dp[i] = dp[i-1].rotate(-remain)
        end
    end
    dp[i] = dp[i].map{|num| num % (10 ** 9 + 7)}
end
puts dp[-1][5]