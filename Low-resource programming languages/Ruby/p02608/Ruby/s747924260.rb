n = gets.chomp.to_i
ans = Array.new(10002,0)
def cul(x,y,z)
    return x**2 + y**2 + z**2 + x*y + y*z + z*x
end
a,b,c = 1
for a in 1..99
    for b in 1..99
        for c in 1..99
            num = cul(a,b,c)
            if num < 10002
                ans[(num-1)] += 1
            end
        end
    end
end
i = 0
while true
    puts ans[i]
    i += 1
    if i == n
        break
    end
end