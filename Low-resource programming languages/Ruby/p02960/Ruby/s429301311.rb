def propagate(ary)
    newary = Array.new(13)
    ary.each_with_index do |a, i|
        newary[(10 * i) % 13] = a
    end
    newary
end
S = gets.chomp
dp = Array.new(S.length){Array.new(13, 0)}
S.each_char.with_index do |s, i|
    if s == '?'
        if i == 0
            for j in 0..9
                dp[i][j] = 1
            end
        else
            for j in 0..9
                dp[i] = dp[i].zip(propagate(dp[i-1]).rotate(-j)).map{|x, y| (x + y) % (10 ** 9 + 7)}
            end
        end
    else
        remain = s.to_i
        if i == 0
            dp[i] = Array.new(13, 0)
            dp[i][remain] = 1
        else
            dp[i] = propagate(dp[i-1]).rotate(-remain)
        end
    end
    dp[i] = dp[i].map{|num| num % (10 ** 9 + 7)}
end
puts dp[-1][5]