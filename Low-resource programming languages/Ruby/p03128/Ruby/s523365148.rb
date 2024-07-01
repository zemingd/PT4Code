n,m = gets.split.map(&:to_i)
b = [0,2,5,5,4,5,6,3,7,6]
a = gets.split.map(&:to_i)
for i in 0..m-1
    for j in 0..m-1
        next if i == j
        if b[a[i]] == b[a[j]]
            a[i],a[j] = a[j],a[i] if a[i] < a[j]
            a[j] = 0
        end
    end
end
a.delete(0)
a.sort!
t = a.size
c = Array.new(t){|i|b[a[i]]}
s = Array.new(n+1).map{Array.new(t,0)}
dp = Array.new(n+1,0)
n.times do |i|
    next if dp[i] == 0 && i != 0
    t.times do |j|
        break if i+c[j] > n
        if dp[i+c[j]] < dp[i]+1
            dp[i+c[j]] = dp[i]+1
        end
    end
end
(n-1).downto(0) do |i|
    t.times do |j|
        if i+c[j] <= n && dp[i+c[j]] == dp[i]+1 && (i+c[j] == n || s[i+c[j]].inject(:+) > 0)
            s[i] = Marshal.load(Marshal.dump(s[i+c[j]]))
            s[i][j] += 1
        end
    end
end
ans = []
t.times do |i|
    s[0][i].times do
        ans << a[i]
    end
end
puts ans.sort.reverse.join("")