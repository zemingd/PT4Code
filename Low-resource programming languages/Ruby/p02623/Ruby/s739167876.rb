n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = a.reverse + b
warn c.inspect
s = 0
sum = 0
while s < a.size && sum + a[s] <= k
    sum += a[s]
    s += 1
end
s = a.size - s
e = a.size
while e < c.size && sum + c[e] <= k
    sum += c[e]
    e += 1
end
#warn [s, e, sum].inspect
max = e - s
while s < a.size
    sum -= c[s]
    s += 1
    while e < c.size && sum + c[e] <= k
        sum += c[e]
        e += 1
    end
    #warn [s, e, sum].inspect
    if e - s > max
        max = e - s
    end
end
puts max
