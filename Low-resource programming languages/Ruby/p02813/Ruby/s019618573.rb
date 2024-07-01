n = gets.to_i
p = gets.split.map &:to_i
q = gets.split.map &:to_i
count = 0
a = []
[*1..n].permutation{ |e|
    if p == e.to_a || q == e.to_a
        a << count
        break if a.size == 2
    end
    count += 1
}
puts (a[1] - a[0]).abs