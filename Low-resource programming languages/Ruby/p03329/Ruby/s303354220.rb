n = gets.chomp.to_i
$coins = [1]
INF = 1 << 40

def make_multiplier(x, n)
    tmp = x
    while tmp <= n
        $coins << tmp
        tmp = tmp * x
    end
end

make_multiplier(6, n)
make_multiplier(9, n)
$coins.sort!

dp = Array.new(n+1, INF)
dp[0] = 0
m = $coins.size

m.times do |i|
    j = 0
    while j + $coins[i] <= n
        dp[j + $coins[i]] = [dp[j + $coins[i]], dp[j] + 1].min
        j += 1
    end
end

puts dp[n]