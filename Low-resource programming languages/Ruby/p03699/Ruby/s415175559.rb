n = gets.to_i
s = 0
l = []

n.times do
    x = gets.to_i
    l.append(x)
    s += x
end

l.sort!
i = 0
while s %10 == 0 && i < n
    s -= l[i]
    i += 1
end
puts s