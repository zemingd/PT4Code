n = gets.to_i
d = 100000
n.times{
    d *= 1.05
    l = d.floor % 1000
    d += 1000 - l if l != 0
}