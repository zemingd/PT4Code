AMO = [nil,2,5,5,4,5,6,3,7,6]

N, M = gets.split.map!{|n| n.to_i}

x = gets.split.map!{|n| n.to_i}
a = Hash.new(0)
for i in 1..M
    a[AMO[x[i-1]]] = x[i-1]
end

a = a.to_a

dp = Array.new(N+1)
dp[0] = 0
for i in 1..N
    dp[i] = -1
    a.each do |b|
        if i - b[0] >= 0 && dp[i-b[0]] != -1 && dp[i] < dp[i-b[0]] + 1
            dp[i] = dp[i-b[0]] + 1
        end
    end
end

p dp

a.sort!{|a, b| -a[1] <=> -b[1]}
k = N
j = 0
ans = ""

while k != 0 do
    if dp[k] == dp[k - a[j][0]] + 1
        ans += a[j][1].to_s
        k -= a[j][0]
    else
        j += 1
    end
end

puts ans