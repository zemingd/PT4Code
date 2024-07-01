n = gets.to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i

ans = 0
n.times{|i|
    ans += [a[i], b[i]].min
    b[i] -= [a[i], b[i]].min
    ans += [a[i+1], b[i]].min
    a[i+1] -= [a[i+1], b[i]].min
}
p ans