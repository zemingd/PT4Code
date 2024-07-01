X = gets.to_i
a5 = [0]
a = 1
loop{
    a5 << a ** 5
    warn a5[-1]
    break if a5[-1] - a5[-2] >= X
    a += 1
}
r = nil
a5.size.times{|a|
    a5.size.times{|b|
        if a5[a] - a5[b] == X
            r = [a, b]
            break
        end
        if a5[a] + a5[b] == X
            r = [a, -b]
            break
        end
    }
    break if r
}
puts r * " "
