def check(s)
    str = s.dup
    dp = []
    dp[0] = 0
    tmp = str[0]
    str.length.times do |i|
        next if i == 0
        if str[i] == tmp
            dp[i] = dp[i-1] + 1
            tmp = (str[i] == "0") ? "1" : "0"
        else
            dp[i] = dp[i-1]
            tmp = str[i]
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