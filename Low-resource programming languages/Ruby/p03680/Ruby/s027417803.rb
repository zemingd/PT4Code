n = gets.chomp.to_i
a = []
for i in 0...n
    a.push(gets.chomp.to_i)
end
next_botton = 0
ans = 0
while 1
    ans += 1
    next_botton = a[next_botton] - 1
    if next_botton == 1
        break
    end
    if ans > 10**6
        print(-1)
        exit()
    end
end
print(ans)