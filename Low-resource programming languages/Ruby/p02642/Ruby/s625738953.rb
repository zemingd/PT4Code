n = gets.to_i
x = gets.split.map(&:to_i)
x.sort!

a = []
if n > 1
    a.push(x[0]) if x[0] != x[1]
end

for i in 0...n
    ok = true
    ok = false if (i != 0 && x[i-1] == x[i]) || (i != (n-1) && x[i] == x[i+1])
    a.push(x[i]) if ok
end

s = 0
while s < a.size
    b = []
    for i in 0..s
        b.push(a[i])
    end
    for i in (s+1)...a.size
        break if i >= a.size
        if a[i] % a[s] != 0
            b.push(a[i])
        end
    end
    a = b
    s += 1 
end

puts a.size