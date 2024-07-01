def isSquare(x)
    ok = 0
    ng = x + 1
    while ng - ok > 1
        mid = (ng + ok) / 2
        if mid * mid <= x
            ok = mid
        else
            ng = mid
        end
    end
    return ok * ok == x
end

x = gets.chomp.split.join.to_i
puts isSquare(x) ? "Yes" : "No"