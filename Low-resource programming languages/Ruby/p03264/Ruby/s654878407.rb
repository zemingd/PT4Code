def eve_odo(a, b)
    return true if a%2 == 0 and b%2 != 0
    return true if a%2 != 0 and b%2 == 0
    return false
end

def aa
    k = gets.chomp.to_i

    o = []
    for i in 1..(k-1)
        for j in (i+1)..k
            o.push([i, j]) if eve_odo(i, j)
        end
    end

    puts o.length
end

aa