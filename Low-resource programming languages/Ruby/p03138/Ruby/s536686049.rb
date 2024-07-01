n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
c = Array.new(45){[0,0]}
sum = a.inject(:+)
ans = 0
for i in 0..45
    o = e = 0
    for j in 0..n-1
        if a[j]%2 == 0
            e += 1
        else
            o += 1
        end
        a[j] /= 2
    end
    c[i] = e*(2**i),o*(2**i)
end
x = 0
ans = 0
44.downto(0) do |i|
    next if (k>>i) == 0
    if ((k>>i)&1) == 0
        x += c[i][1]
    else
        x += c[i][0]
        ret = x-c[i][0]+c[i][1]
        for j in 0..i-1
            ret += c[j].max
        end
        ans = ret if ans < ret
    end
    ans = x if ans < x
end
if k != 0
    puts ans
else
    puts sum
end