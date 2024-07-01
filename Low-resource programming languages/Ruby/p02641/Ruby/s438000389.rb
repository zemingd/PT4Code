x, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = 999999
min = 999999
for i in -200..200
    d = (x - i).abs
    if min > d
        ok = true
        for j in 0...n
            ok = false if i == a[j]
        end
        if ok
            min = d
            ans = i
        end
    end
end

puts ans