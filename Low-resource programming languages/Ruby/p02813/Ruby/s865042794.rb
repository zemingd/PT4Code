n = gets.to_i
p = gets.split.map &:to_i
q = gets.split.map &:to_i
count = 0
a = b = 0
[*1..n].permutation{ |e|
    a = count if p == e.to_a
    if q == e.to_a
        b = count
        break
    end
    count += 1
}
puts b - a