n, m = gets.split.map(&:to_i)
a = gets.split

num = {}
[0, 2, 5, 5, 4, 5, 6, 3, 7, 6].each_with_index{|i, idx| num[idx.to_s] = i }

INF = 1e8.to_i
dp = Array.new(n+1, -INF)
dp[0] = 0

for i in 1..n
    maxcol = -INF
    for aj in a
        num_aj = num[aj]

        next if i - num_aj < 0

        if dp[i - num_aj] + 1 > maxcol
            maxcol = dp[i - num_aj] + 1
        end
    end

    if maxcol > 0
        dp[i] = maxcol
    end
end

a = a.sort.reverse
match = n
remcol = dp[n]
ans = ""
while match > 0
    for ai in a
        num_ai = num[ai]

        if dp[match - num_ai] == remcol - 1
            ans += ai
            remcol -= 1
            match -= num_ai
            break
        end
    end
end
puts ans
