def calc(n)
    d = 100000
    n.times{
        d *= 1.05
        d = d.floor
        l = d % 1000
        d += 1000 - l if l != 0
    }
    p d.to_i
end

n = gets.to_i
calc(n)