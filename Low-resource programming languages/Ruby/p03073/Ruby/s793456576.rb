def check(s)
    str = s.dup
    dp = []
    str.length.times do |i|
        if i == 0
            dp[i] = 0
            next
        end
        if str[i] == str[i-1]
            dp[i] = dp[i-1] + 1
            str[i] = (str[i] == "0") ? "1" : "0"
        else
            dp[i] = dp[i-1]
        end
    end
    dp.last
end

def test
    s = gets.chomp
    ans = check(s)
    s[0] = (s[0] == "0") ? "1" : "0"
    ans2 = check(s) + 1
    [ans, ans2].min
end

p test