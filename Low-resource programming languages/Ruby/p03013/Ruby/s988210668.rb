n,m = gets.split.map(&:to_i)
mod = 10 ** 9 + 7

a = []
m.times{a << gets.to_i}
a.sort!
a << 0

dp = Array.new(n+1, 0)
dp[0] = 1

ai = 0
1.upto(n) do |dpi|
    if a[ai] == dpi
        ai += 1
        next
    end

    if dpi == 1
        dp[dpi] = dp[0]
    else
        dp[dpi] = dp[dpi-1] + dp[dpi-2]
    end

    dp[dpi] %= mod
end

puts dp[n]