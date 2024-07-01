def solve(y, m, d)
    if y > 2019
        return false
    end
    if y == 2019 && m > 4
        return false
    end
    if y == 2019 && m == 4 && d > 30
        return false
    end
    return true
end

y, m, d = gets.split('/').map(&:to_i)
puts solve(y, m, d) ? "Heisei" : "TBD"