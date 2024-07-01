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
a.sort_by!{|i|b[i]}
t = a.size
c = Array.new(t){|i|b[a[i]]}
dp = Array.new(n+1,0)
s = Array.new(n+1).map{Array.new(t,0)}
n.times do |i|
    next if dp[i] == 0 && i != 0
    t.times do |j|
        break if i+c[j] > n
        if dp[i+c[j]] < dp[i]+1
            dp[i+c[j]] = dp[i]+1
            s[i+c[j]] = Marshal.load(Marshal.dump(s[i]))
            s[i+c[j]][j] += 1
        elsif dp[i+c[j]] == dp[i]+1
            s[i][j] += 1
            if s[i+c[j]] == s[i]
                s[i][j] -= 1
                next
            end
            x = []
            t.times do |k|
                s[i][k].times do
                    x << a[k]
                end
            end
            y = []
            t.times do |k|
                s[i+c[j]][k].times do
                    y << a[k]
                end
            end
            if x.sort.reverse.join("") > y.sort.reverse.join("")
                s[i+c[j]] = Marshal.load(Marshal.dump(s[i]))
            end
            s[i][j] -= 1
        end
    end
end
ans = []
t.times do |i|
    s[n][i].times do
        ans << a[i]
    end
end
puts ans.sort.reverse.join("")