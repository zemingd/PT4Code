n = gets.to_i
p = gets.split.map(&:to_i)
ans = 0
for i in 1 .. n - 2
    q = [p[i - 1], p[i], p[i + 1]]
    q.sort!
    ans += 1 if q[1] == p[i]
end
p ans