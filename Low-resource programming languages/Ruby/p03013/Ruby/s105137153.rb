def get_int_array
    gets.strip.split(' ').map(&:to_i)
end

n, m = get_int_array
ns = Array.new(n+1, true)

m.times{|_| ns[gets.strip.to_i] = false }

dp = Array.new(n+1, 0)
dp[0] = 1
(0...n).each{|i|
    ((i + 1)..[n, i+2].min).each {|j|
        if ns[j]
            dp[j] += dp[i]
            dp[j] %= 1_000_000_007
        end
    }
}
p dp[n]